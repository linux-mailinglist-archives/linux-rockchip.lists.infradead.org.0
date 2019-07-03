Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B848F5EC4E
	for <lists+linux-rockchip@lfdr.de>; Wed,  3 Jul 2019 21:09:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=grz9MJkIKcEwF8OggWOD0ezhlDEcwcm+0ONGJlK5y/Y=; b=c9gYz3kto7S81/
	hJGN81mBmAzaSurwstOxIPoB0Af6NqpuOysY50g5HkUcF7UoHXw3wNc3huOkIr/9uaoybnR9Zgbj6
	GZius6TYP8pTYVm4KDsaVLhKeA8pqFD9x2p81DIxXdnJQWyg6g43BbvGjNMuXW7qhsD36zu5zcwIw
	bDXnkrt8rB/FFTaBwBR7hkGsFKL7uJ1l5upbC4wNeeqS5En8vtheLrQZlzvsCCSbPt02yNO36Fhj0
	eqCOETjTiIL+ruRx3Xtgovfi1T8li4eMr1RmSpoprRvuIjUgurSE7RjUjUF/+qt5xUCOIojv1eBQa
	VKsyCfTTwZfmotMTtRbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hikdX-0002Av-1z; Wed, 03 Jul 2019 19:09:47 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hikdS-0001qk-DH; Wed, 03 Jul 2019 19:09:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 4A37428AB1F
From: Helen Koike <helen.koike@collabora.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v7 00/14] Rockchip ISP1 Driver
Date: Wed,  3 Jul 2019 16:08:56 -0300
Message-Id: <20190703190910.32633-1-helen.koike@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_120942_716730_50232F0D 
X-CRM114-Status: GOOD (  37.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, eddie.cai.linux@gmail.com,
 heiko@sntech.de, Sean Young <sean@mess.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Linus Walleij <linus.walleij@linaro.org>, Eddie James <eajames@linux.ibm.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Tony Xie <tony.xie@rock-chips.com>, laurent.pinchart@ideasonboard.com,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, kernel@collabora.com,
 Todor Tomov <todor.tomov@linaro.org>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>, zyc@rock-chips.com,
 Kishon Vijay Abraham I <kishon@ti.com>, hans.verkuil@cisco.com,
 Yong Zhi <yong.zhi@intel.com>, Guennadi Liakhovetski <g.liakhovetski@gmx.de>,
 zhengsq@rock-chips.com, linux-media@vger.kernel.org,
 Ettore Chimenti <ek5.chimenti@gmail.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Marc Zyngier <marc.zyngier@arm.com>, jeffy.chen@rock-chips.com,
 Helen Koike <helen.koike@collabora.com>, Rob Herring <robh+dt@kernel.org>,
 Yong Deng <yong.deng@magewell.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 jacob2.chen@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, sakari.ailus@linux.intel.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Zheng Yang <zhengyang@rock-chips.com>, "David S. Miller" <davem@davemloft.net>,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello,

I'm re-sending a new version of ISP(Camera) v4l2 driver for rockchip
rk3399 SoC.

It is not perfect yet (see known issues below), but I'm sending in case
some other people already wants to start playing with it.
I believe de main design is ok (please let me know if
it is not) and it would be great to get some reviews already.

This patchset is also available at:
https://gitlab.collabora.com/koike/linux/tree/rockchip/isp/v7

Libcamera patched to work with this version:
https://gitlab.collabora.com/koike/libcamera
(I'll also sent it to the libcamera dev mailing list)

I tested on the rockpi 4 with a rpi v1.3 sensor and also with the
Scarlet Chromebook.
Images from the Scarlet are a bit dark and green for some reason, but I
believe it's a problem in the sensor's drivers as images from the
rockpi looks ok.

The main differences from previous version are (in a macro pov):
----------------------------------------------------------------
- dphy specific code migrated to drivers/phy
- design change: droped the subdevice for the interface. Now, in the
media topology, the sensors connect directly to the ISP1.
- v4l2-compliance fixes
- dropped rk3288 (as I'm not testing it)
- dropped txrx dphy support (as I'm not testing it and it requires a bit
more work to support dsi too)
- interrupts and hw config fixes
- minor bug fixes and cleanups
- I added myself in the MAINTAINERS, as I'm not sure if previous people
still wants to maintain it, please let me know if I should keep the old
names there.

Known issues:
-------------
- Reloading the module doesn't work (there is some missing cleanup when
unloading)
- When capturing in bayer format, changing the size doesn't seem to
affect the image.
- crop needs more tests
- v4l2-compliance error:
        fail: v4l2-test-controls.cpp(824): subscribe event for control 'Image Processing Controls' failed
test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: FAIL
It seems that if controls are supported, v4l2-compliance says that
controls of type 'Image Processing Controls' are mandatory, is this
correct?
- It seems there are still some issues with interrupts, but I couldn't
isolate them yet.

Reasoning for the design change:
--------------------------------
In the previous version, the isp subdevice call the mipidphy_g_mbus
from rkisp1.c, so it can get
informations from the sensor such as the type of mbus (V4L2_MBUS_BT656,
V4L2_MBUS_PARALLEL or V4L2_MBUS_CSI2_CPHY), the number of csi2 lanes,
flags (V4L2_MBUS_PCLK_SAMPLE_RISING, V4L2_MBUS_VSYNC_ACTIVE_LOW or
V4L2_MBUS_HSYNC_ACTIVE_LOW). And the isp driver uses those info to configure
the hardware properly.

These information come from the DT node of the sensor. And the current
implementation is propagating this information from the sensor to the isp
through this mipidphy_g_mbus_config() (thus the hack)

* 1st attempt to solve this hack) Separating the interface code from the isp.

With the topology:

isp -> csi2 -> sensor

I was trying to migrate the CSI2 hardware configuration to the csi2 subdevice code.
But the problem I found was that in the DT, the csi2 regs is in the middle of the isp1
regs, and declaring the same "regs = <>" in both nodes (isp0 and csi2) is no good.

* 2nd attempt) flatening the DT
So instead of having two DT nodes (isp0 and csi2), we can have a single node, similar
to omap3isp.
And we can have a property, "rk,phy-type" that defines the interface (csi2, bt656 or parallel).

But, now my question is: can the isp be connected to multiple interfaces at a
time? If yes, then this is not a good solution (as we won't be able to describe
multiple interfaces in the DT node).

* 3rd attemp - WIP) get rid of the interface subdevice (chosen design)
Is there a reason to have the topology like:

isp -> interface - - -> sensor1
        |   |-------->  sensor2
        | - - - - - - > sensor3

(only one sensor can be active at a time)

?

Would it be ok if I just hide the interface from the topology? Like:

isp - - - - - -> sensor1
| |----------->  sensor2
|- - - - - - - > sensor3

Like this, I could cleanup a bunch of v4l2 code from the interface node,
the isp would know the active sensor (and its configs), and it can
configure everything itself.

I don't really see a big reason to expose the interface (csi2,
bt656 or parallel) in the topology.
Unless I'm missing something.

Previous changelog:
-------------------

changes in V6:
  - add mipi txrx phy support
  - remove bool and enum from uapi header
  - add buf_prepare op
  - correct some spelling problems
  - return all queued buffers when starting stream failed

changes in V5: Sync with local changes,
  - fix the SP height limit
  - speed up the second stream capture
  - the second stream can't force sync for rsz when start/stop streaming
  - add frame id to param vb2 buf
  - enable luminance maximum threshold

changes in V4:
  - fix some bugs during development
  - move quantization settings to rkisp1 subdev
  - correct some spelling problems
  - describe ports in dt-binding documents

changes in V3:
  - add some comments
  - fix wrong use of v4l2_async_subdev_notifier_register
  - optimize two paths capture at a time
  - remove compose
  - re-struct headers
  - add a tmp wiki page: http://opensource.rock-chips.com/wiki_Rockchip-isp1

changes in V2:
  mipi-phy:
    - use async probing
    - make it be a child device of the GRF
  isp:
    - add dummy buffer
    - change the way to get bus configuration, which make it possible to
            add parallel sensor support in the future(without mipi-phy driver).

------------------

Changes in v7:
- s/IPU3/RK_ISP1
- s/correspond/corresponding
- s/use/uses
- s/docuemnt/document
- Fix checkpatch errors (lines over 80 and SPDX)
- Add TODO to improve docs
- Migrate dphy specific code from
drivers/media/platform/rockchip/isp1/mipi_dphy_sy.c
to drivers/phy/rockchip/phy-rockchip-dphy.c
- Drop support for rk3288
- Drop support for dphy txrx
- code styling and checkpatch fixes
- fixed warning because of unknown entity type
- fixed v4l2-compliance errors regarding rkisp1 formats, try formats
and default values
- fix typo riksp1/rkisp1
- redesign: remove mipi/csi subdevice, sensors connect directly to the
isp subdevice in the media topology now. As a consequence, remove the
hack in mipidphy_g_mbus_config() where information from the sensor was
being propagated through the topology.
- From the old dphy:
        * cache get_remote_sensor() in s_stream
        * use V4L2_CID_PIXEL_RATE instead of V4L2_CID_LINK_FREQ
- Replace stream state with a boolean
- code styling and checkpatch fixes
- fix stop_stream (return after calling stop, do not reenable the stream)
- fix rkisp1_isp_sd_get_selection when V4L2_SUBDEV_FORMAT_TRY is set
- fix get format in output (isp_sd->out_fmt.mbus_code was being ignored)
- s/intput/input
- remove #define sd_to_isp_sd(_sd), add a static inline as it will be
reused by the capture
- s/strlcpy/strscpy
- sort out the locks in isp stats
- code styling and checkpatch fixes
- s/strlcpy/strscpy
- s/strcpy/strscpy
- fix config lsc error
LSC data table size is 17x17, but when configuring data to ISP,
should be aligned to 18x17. That means every last data of last
line should be filled with 0, and not filled with the data of
next line.
- Update new ISP parameters immediately
For those sub modules that have shadow registers in core isp, the
new programing parameters would not be active if both
CIF_ISP_CTRL_ISP_CFG_UPD_PERMANENT and CFG_UPD are not set. Now
we configure CFG_UPD to force update the shadow registers when new
ISP parameters are configured.
- fix some ISP parameters config error
Some ISP parameter config functions may override the old enable
bit value, because the enable bits of these modules are in the
same registers with parameters. So we should save the old enable
bits firstly.
- code styling and checkpatch fixes
- s/strlcpy/strscpy
- Fix v4l2-compliance issues:
        * remove input ioctls
media api can be used to define the topology, this input api is not
required. Besides it, if an input is enumerated, v4l2-compliance is not
happy with G_FMT returning the default colorspace instead of something
more specific.
        * return the pixelformat to the userspace
G_/S_/TRY_ FORMAT should return a valid pixelformat to the user, even if
the user gave an invalid one
        * add missing default colorspace and ycbcr
        * fix wrong pixformat in mp_fmts[] table
        * add buf type check in s_/g_selection
        * queue_setup - check sizes
        * normalize bus_info name
        * fix field any v4l2-compliance -s complain - set field none
        when streaming
- Fix compiling error: s/vidioc_enum_fmt_vid_cap_mplane/vidioc_enum_fmt_vid_cap
- Replace stream state with a boolean
The rkisp1_state enum consists only of 3 entries, where 1 is completely
unused and the other two respectively mean not streaming or streaming.
Replace it with a boolean called "streaming".
- Simplify MI interrupt handling
Rather than adding unnecessary indirection, just use stream index to
handle MI interrupt enable/disable/clear, since the stream index matches
the order of bits now, thanks to previous patch. While at it, remove
some dead code.
- code styling and checkpatch fixes
- add link_validate: don't allow a link with bayer/non-bayer mismatch
- VIDEO_ROCKCHIP_ISP1 selects VIDEOBUF2_VMALLOC
- add PHY_ROCKCHIP_DPHY as a dependency for VIDEO_ROCKCHIP_ISP1
- Fix compilation and runtime errors due to bitrotting
The code has bit-rotten since March 2018, fix compilation errors.
The new V4L2 async notifier API requires notifiers to be initialized by
a call to v4l2_async_notifier_init() before being used, do so.
- Add missing module device table
- use clk_bulk framework
- add missing notifiers cleanups
- s/strlcpy/strscpy
- normalize bus_info name
- fix s_stream error path, stream_cnt wans't being decremented properly
- use devm_platform_ioremap_resource() helper
- s/deice/device
- redesign: remove mipi/csi subdevice, sensors connect directly to the
isp subdevice in the media topology now.
- remove "saved_state" member from rkisp1_stream struct
- Reverse the order of MIs
- Simplify MI interrupt handling
Rather than adding unnecessary indirection, just use stream index to
handle MI interrupt enable/disable/clear, since the stream index matches
the order of bits now, thanks to previous patch. While at it, remove
some dead code.
- code styling and checkpatch fixes
- update document with new design and tested example
- updated doc with new design and tested example
- add phy properties
- add ports
- add phy-cells

Helen Koike (1):
  MAINTAINERS: add entry for Rockchip ISP1 driver

Jacob Chen (9):
  media: doc: add document for rkisp1 meta buffer format
  media: rkisp1: add Rockchip MIPI Synopsys DPHY driver
  media: rkisp1: add Rockchip ISP1 subdev driver
  media: rkisp1: add ISP1 statistics driver
  media: rkisp1: add ISP1 params driver
  media: rkisp1: add capture device driver
  media: rkisp1: add rockchip isp1 core driver
  dt-bindings: Document the Rockchip ISP1 bindings
  dt-bindings: Document the Rockchip MIPI RX D-PHY bindings

Jeffy Chen (1):
  media: rkisp1: Add user space ABI definitions

Shunqian Zheng (3):
  media: videodev2.h, v4l2-ioctl: add rkisp1 meta buffer format
  arm64: dts: rockchip: add isp0 node for rk3399
  arm64: dts: rockchip: add rx0 mipi-phy for rk3399

 .../bindings/media/rockchip-isp1.txt          |   71 +
 .../bindings/media/rockchip-mipi-dphy.txt     |   38 +
 Documentation/media/uapi/v4l/meta-formats.rst |    2 +
 .../uapi/v4l/pixfmt-meta-rkisp1-params.rst    |   20 +
 .../uapi/v4l/pixfmt-meta-rkisp1-stat.rst      |   18 +
 MAINTAINERS                                   |    8 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |   36 +
 drivers/media/platform/Kconfig                |   12 +
 drivers/media/platform/Makefile               |    1 +
 drivers/media/platform/rockchip/isp1/Makefile |    7 +
 .../media/platform/rockchip/isp1/capture.c    | 1754 +++++++++++++++++
 .../media/platform/rockchip/isp1/capture.h    |  164 ++
 drivers/media/platform/rockchip/isp1/common.h |  101 +
 drivers/media/platform/rockchip/isp1/dev.c    |  675 +++++++
 drivers/media/platform/rockchip/isp1/dev.h    |   97 +
 .../media/platform/rockchip/isp1/isp_params.c | 1604 +++++++++++++++
 .../media/platform/rockchip/isp1/isp_params.h |   50 +
 .../media/platform/rockchip/isp1/isp_stats.c  |  508 +++++
 .../media/platform/rockchip/isp1/isp_stats.h  |   60 +
 drivers/media/platform/rockchip/isp1/regs.c   |  223 +++
 drivers/media/platform/rockchip/isp1/regs.h   | 1525 ++++++++++++++
 drivers/media/platform/rockchip/isp1/rkisp1.c | 1286 ++++++++++++
 drivers/media/platform/rockchip/isp1/rkisp1.h |  111 ++
 drivers/media/v4l2-core/v4l2-ioctl.c          |    2 +
 drivers/phy/rockchip/Kconfig                  |    8 +
 drivers/phy/rockchip/Makefile                 |    1 +
 drivers/phy/rockchip/phy-rockchip-dphy.c      |  412 ++++
 include/uapi/linux/rkisp1-config.h            |  816 ++++++++
 include/uapi/linux/videodev2.h                |    4 +
 29 files changed, 9614 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip-isp1.txt
 create mode 100644 Documentation/devicetree/bindings/media/rockchip-mipi-dphy.txt
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
 create mode 100644 drivers/media/platform/rockchip/isp1/Makefile
 create mode 100644 drivers/media/platform/rockchip/isp1/capture.c
 create mode 100644 drivers/media/platform/rockchip/isp1/capture.h
 create mode 100644 drivers/media/platform/rockchip/isp1/common.h
 create mode 100644 drivers/media/platform/rockchip/isp1/dev.c
 create mode 100644 drivers/media/platform/rockchip/isp1/dev.h
 create mode 100644 drivers/media/platform/rockchip/isp1/isp_params.c
 create mode 100644 drivers/media/platform/rockchip/isp1/isp_params.h
 create mode 100644 drivers/media/platform/rockchip/isp1/isp_stats.c
 create mode 100644 drivers/media/platform/rockchip/isp1/isp_stats.h
 create mode 100644 drivers/media/platform/rockchip/isp1/regs.c
 create mode 100644 drivers/media/platform/rockchip/isp1/regs.h
 create mode 100644 drivers/media/platform/rockchip/isp1/rkisp1.c
 create mode 100644 drivers/media/platform/rockchip/isp1/rkisp1.h
 create mode 100644 drivers/phy/rockchip/phy-rockchip-dphy.c
 create mode 100644 include/uapi/linux/rkisp1-config.h

-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
