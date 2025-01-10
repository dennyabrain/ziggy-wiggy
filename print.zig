const std = @import("std");

const User = struct { name: []const u8, age: i32 };

const sdl = @cImport({
    @cInclude("SDL.h");
});

pub fn main() void {
    std.debug.print("Hello World \n", .{});

    const denny = User{ .name = "denny", .age = 32 };
    std.debug.print("Hi {s}", .{denny.name});

    _ = sdl.SDL_Init(sdl.SDL_INIT_VIDEO);
    defer sdl.SDL_Quit();
    const window = sdl.SDL_CreateWindow("trtl", sdl.SDL_WINDOWPOS_CENTERED, sdl.SDL_WINDOWPOS_CENTERED, 166, 166, 0);
    defer sdl.SDL_DestroyWindow(window);

    // const _renderer = sdl.SDL_CreateRenderer(window, -1);
    // renderer.draw

    // const surface = sdl.SDL_GetWindowSurface(window);

    // var quit = false;
    // while (!quit) {
    //     var event: sdl.SDL_Event = undefined;
    //     while (sdl.SDL_PollEvent(&event) != 0) {
    //         switch (event.type) {
    //             sdl.SDL_QUIT => {
    //                 quit = true;
    //             },
    //             else => {},
    //         }
    //     }
    //     // Draw a white cross on red background
    //     _ = sdl.SDL_FillRect(surface, 0, 0xff0000);
    //     const v = sdl.SDL_Rect{ .x = 33, .y = 66, .w = 100, .h = 34 };
    //     _ = sdl.SDL_FillRect(surface, &v, 0xffffff);
    //     const h = sdl.SDL_Rect{ .x = 66, .y = 33, .w = 34, .h = 100 };
    //     _ = sdl.SDL_FillRect(surface, &h, 0xffffff);

    //     _ = sdl.SDL_RenderDrawLine(renderer: ?*SDL_Renderer, x1: c_int, y1: c_int, x2: c_int, y2: c_int)

    //     _ = sdl.SDL_UpdateWindowSurface(window);
    // }
}
