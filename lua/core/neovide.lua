if vim.g.neovide then
  -- 行间距
  vim.opt.linespace = 4
  -- 缩放尺度
  vim.g.neovide_scale_factor = 1.0
  -- padding 指的是neovim与旁边的边框之间的距离
  vim.g.neovide_padding_top = 8
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 10
  vim.g.neovide_padding_left = 10
  -- float blur
  vim.g.neovide_floating_blur_amount_x = 0.0
  vim.g.neovide_floating_blur_amount_y = 0.0
  vim.g.neovide_floating_shadow = false
  -- 半透明
  vim.g.neovide_transparency = 0.825
  -- 滚动动画时间
  vim.g.neovide_scroll_animation_length = 0.3
  -- 键入时候鼠标隐藏
  vim.g.neovide_hide_mouse_when_typing = true
  -- 刷新率
  vim.g.neovide_refresh_rate = 74
  vim.g.neovide_refresh_rate_idle = 74
  -- 全屏
  vim.g.neovide_fullscreen = false
  -- 光标移动例子效果
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_cursor_vfx_particle_lifetime = 2
end
