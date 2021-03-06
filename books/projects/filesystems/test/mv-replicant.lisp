(include-book "../test-stuff")
(include-book "oslib/argv" :dir :system)

(b*
    (((mv argv state)
      (oslib::argv))
     ((unless (>= (len argv) 2))
      (mv (good-bye 1) fat32$c state))
     ((mv & val state)
      (getenv$ "DISK" state))
     ((mv fat32$c &)
      (disk-image-to-lofat
       fat32$c val state))
     ((mv fs &)
      (lofat-to-hifat fat32$c))
     (oldpath (path-to-fat32-path (coerce (nth 0 argv) 'list)))
     (newpath (path-to-fat32-path (coerce (nth 1 argv) 'list)))
     ((mv fs exit-status &)
      (hifat-rename fs oldpath newpath))
     ((mv fat32$c &)
      (hifat-to-lofat fat32$c fs))
     ((mv & val state)
      (getenv$ "MV_OUTPUT" state))
     ((mv state &)
      (lofat-to-disk-image
       fat32$c val state)))
  (mv (good-bye exit-status) fat32$c state))
