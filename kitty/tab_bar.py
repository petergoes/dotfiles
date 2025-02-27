import datetime
import json
import subprocess
from collections import defaultdict


from kitty.boss import get_boss
from kitty.fast_data_types import Screen, add_timer
from kitty.tab_bar import (
    DrawData,
    ExtraData,
    Formatter,
    TabBarData,
    as_rgb,
    draw_attributed_string,
    draw_tab_with_powerline,
)

timer_id = None

orientation = False
is_fullscreen = False

def draw_tab(
    draw_data: DrawData,
    screen: Screen,
    tab: TabBarData,
    before: int,
    max_title_length: int,
    index: int,
    is_last: bool,
    extra_data: ExtraData,
) -> int:
    global timer_id
    global orientation 
    global is_fullscreen

    if tab.is_active:
        is_fullscreen = False
        if tab.layout_name == 'fat':
            orientation = " "
        elif tab.layout_name == 'tall':
            orientation = " "
        elif tab.layout_name == 'stack' and tab.num_windows > 1:
            is_fullscreen = True
            orientation = " "
        elif tab.layout_name == 'stack':
            orientation = " "

    if timer_id is None:
        timer_id = add_timer(_redraw_tab_bar, 2.0, True)
    draw_tab_with_powerline(
        draw_data, screen, tab, before, max_title_length, index, is_last, extra_data
    )
    if is_last:
        draw_right_status(draw_data, tab, screen)
    return screen.cursor.x


def draw_right_status(draw_data: DrawData, tab: TabBarData, screen: Screen) -> None:
    global is_fullscreen
    # The tabs may have left some formats enabled. Disable them now.
    draw_attributed_string(Formatter.reset, screen)
    cells = create_cells(tab)
    # Drop cells that wont fit
    while True:
        if not cells:
            return
        padding = screen.columns - screen.cursor.x - sum(len(c) + 3 for c in cells)
        if padding >= 0:
            break
        cells = cells[1:]

    if padding:
        screen.draw(" " * padding)

    if is_fullscreen:
        tab_bg = as_rgb(int(draw_data.active_bg))
        tab_fg = as_rgb(int(draw_data.active_fg))
    else:
        tab_bg = as_rgb(int(draw_data.inactive_bg))
        tab_fg = as_rgb(int(draw_data.inactive_fg))

    default_bg = as_rgb(int(draw_data.default_bg))
    for cell in cells:
        # Draw the separator
        if cell == cells[0]:
            screen.cursor.fg = tab_bg
            screen.draw("")
        else:
            screen.cursor.fg = default_bg
            screen.cursor.bg = tab_bg
            screen.draw("")
        screen.cursor.fg = tab_fg
        screen.cursor.bg = tab_bg
        screen.draw(f" {cell} ")


def create_cells(tab: TabBarData) -> list[str]:
    global orientation 
    now = datetime.datetime.now()
    return [
        orientation,
    ]


def _redraw_tab_bar(timer_id):
    for tm in get_boss().all_tab_managers:
        tm.mark_tab_bar_dirty()
