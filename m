Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FA3F15AB
	for <lists+linux-rockchip@lfdr.de>; Wed,  6 Nov 2019 13:02:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MADZWsH15KXbipgNet3PofsykVyK5l5BV4tssHxNraE=; b=R+6yhnaPR98nAl
	a8gp9IjM+Y3GE4zrSE/Qz8dX5hUah48ZOZxBGCAyrv72iXmvzVnBImH8ec7VMWIslK5GLqlHaPy6v
	7QeU3arWi47Dqcd7ozfXpYRizEI1nnBnsdJ1TuvcuWrpVUUL6HQJsZy2OScyKqQsxV0NfHSO3TIqp
	SpbDhv9nWCd2tVCXiw3T16FuufW5fblwH66zufECJKm/ttB0mSYEp/zDEOF554RfqG2D4D0X6jZBh
	aYoIilFbDLXyf1juXkE6rtP5b+XHrPoek/cN+kmZ5FozinBh3yFQkIonZs9zwuBbz3/wwcP+QPfaP
	HHmnXAU9xPldLuuGuUCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSK13-0002cF-6M; Wed, 06 Nov 2019 12:02:25 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSK0m-0002QO-Cv; Wed, 06 Nov 2019 12:02:10 +0000
Received: from floko.floko.floko (unknown
 [IPv6:2804:431:c7f1:970a:5c8b:9def:467e:dc3f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id CFE3128DC3B;
 Wed,  6 Nov 2019 12:01:58 +0000 (GMT)
From: Helen Koike <helen.koike@collabora.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v9 0/4] Rockchip ISP Driver
Date: Wed,  6 Nov 2019 09:01:28 -0300
Message-Id: <20191106120132.6876-1-helen.koike@collabora.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_040208_704387_D91B7EDD 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: eddie.cai.linux@gmail.com, kernel@collabora.com, heiko@sntech.de,
 gregkh@linuxfoundation.org, jeffy.chen@rock-chips.com, zyc@rock-chips.com,
 linux-kernel@vger.kernel.org, tfiga@chromium.org,
 Helen Koike <helen.koike@collabora.com>, hans.verkuil@cisco.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 zhengsq@rock-chips.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello,

I'm submitting v9 of the Rockchip ISP driver to staging this time.

The main reason is that people are already using it from the mailing
list (including libcamera), and having it mainlined makes the workflow
easier. Also, it is easier for other people to contribute back (with code
or testing the driver).

We plan to actively work on this driver to get it our of staging.

I squashed the patches in a single commit. The previous series
splitted the commits by files, but since they had dependencies
on each other, it was harder to review.

This patchset is also available at:
https://gitlab.collabora.com/koike/linux/tree/rockchip/isp/v9

Libcamera patched to work with this version:
https://gitlab.collabora.com/koike/libcamera
(also sent to the mailing list)

Thanks
Helen

Changes in v9:
* dphy
	- Move to staging
	- replace memcpy by a directly assignment
	- remove unecessary ret variable in rockchip_dphy_init
	- s/0x1/1
	- s/0x0/0
	- coding style changes
	- dphy_reg variable sizes
	- variables from int to unsigned int
	- rename functions to start with rk_
	- rename dphy0 to rx
	- fix hardcoded lane0 usage
	- disable rx on power off
	- general cleanups of unused variables
	- Move to staging
	- Previous patch series had a patch for file and the last commit would
	add the Makefile bits to make it compile. But one file was dependent on
	each other, so it doesn't make much sense to have a patch for each file
	and it doesn't make it easier to review.
* capture.c
        - replace v4l2_{dgb,info,warn,err} by dev_*
* isp_stats.c
        - replace v4l2_{dgb,info,warn,err} by dev_*
        - remove LOG_ISR_EXE_TIME ifndef's
        - constify ops structs
        - s/strlcpy/strscpy
        - add missing mutex_destroy() calls in rkisp1_register_stats_vdev error path
* rkisp1.c:
        - replace v4l2_{dgb,info,warn,err} by dev_*
        - fix error returned in link_validate
        - remove s_power() callback
        - add regwrite/regread wrappers
        - add macros RKISP1_DEF_SRC_PAD_FMT/RKISP1_DEF_SINK_PAD_FMT
        - several minor cleanups
        - s/RKISP1_ISP_PAD_SINK([^_])/RKISP1_ISP_PAD_SINK_VIDEO\1/
        - merge tables rkisp1_isp_input_formats and rkisp1_isp_output_formats
        - in_fmt and out_fmt as pointers
        - simply struct rkisp1_isp_subdev to work correctly with try format
        - fix crop/fmt propagation
* dev.h / dev.c / regs.c / regs.h / common.h
        - replace v4l2_{dgb,info,warn,err} by dev_*
        - s/pr_info/dev_dbg
        - s/int size/unsigned int size
        - remove module param rkisp1_debug
        - coding style fixes
        - fix error in subdev_notifier_bound, check dphy before assigning to sensor->dphy
        - remove subdevs fixed size array from rkisp1_pipeline
        - remove sensors list, as it can be identified from the media topology
        - Kconfig: add COMPILE_TEST in the dependency
        - use v4l2_pipeline_pm_use and remove _isp_pipeline_s_power() and _subdev_set_power()
        - remove struct rkisp1_pipeline and retrieve pipeline information from the media framework
        - remove remaining rk3288 code
        - cache pixel rate control in sctruct sensor_async_subdev
        - remove enum rkisp1_sd_type

Please see a more complete history of changes at
https://patchwork.kernel.org/cover/11066499/

Helen Koike (3):
  media: staging: phy-rockchip-dphy: add Rockchip MIPI Synopsys DPHY
    driver
  media: staging: rkisp1: add Rockchip ISP1 driver
  MAINTAINERS: add entry for Rockchip ISP1 driver

Shunqian Zheng (1):
  media: videodev2.h, v4l2-ioctl: add rkisp1 meta buffer format

 MAINTAINERS                                   |    6 +
 drivers/media/v4l2-core/v4l2-ioctl.c          |    2 +
 drivers/staging/media/Kconfig                 |    4 +
 drivers/staging/media/Makefile                |    2 +
 .../staging/media/phy-rockchip-dphy/Kconfig   |   11 +
 .../staging/media/phy-rockchip-dphy/Makefile  |    2 +
 drivers/staging/media/phy-rockchip-dphy/TODO  |    6 +
 .../phy-rockchip-dphy/phy-rockchip-dphy.c     |  400 ++++
 .../bindings/media/rockchip-isp1.txt          |   71 +
 .../bindings/media/rockchip-mipi-dphy.txt     |   38 +
 .../uapi/v4l/pixfmt-meta-rkisp1-params.rst    |   23 +
 .../uapi/v4l/pixfmt-meta-rkisp1-stat.rst      |   22 +
 drivers/staging/media/rkisp1/Kconfig          |   13 +
 drivers/staging/media/rkisp1/Makefile         |    7 +
 drivers/staging/media/rkisp1/TODO             |   20 +
 drivers/staging/media/rkisp1/capture.c        | 1869 +++++++++++++++++
 drivers/staging/media/rkisp1/capture.h        |  164 ++
 drivers/staging/media/rkisp1/common.h         |   98 +
 drivers/staging/media/rkisp1/dev.c            |  439 ++++
 drivers/staging/media/rkisp1/dev.h            |   67 +
 drivers/staging/media/rkisp1/isp_params.c     | 1604 ++++++++++++++
 drivers/staging/media/rkisp1/isp_params.h     |   50 +
 drivers/staging/media/rkisp1/isp_stats.c      |  494 +++++
 drivers/staging/media/rkisp1/isp_stats.h      |   60 +
 drivers/staging/media/rkisp1/regs.c           |  224 ++
 drivers/staging/media/rkisp1/regs.h           | 1525 ++++++++++++++
 drivers/staging/media/rkisp1/rkisp1.c         | 1246 +++++++++++
 drivers/staging/media/rkisp1/rkisp1.h         |   97 +
 .../staging/media/rkisp1/uapi/rkisp1-config.h |  815 +++++++
 include/uapi/linux/videodev2.h                |    4 +
 30 files changed, 9383 insertions(+)
 create mode 100644 drivers/staging/media/phy-rockchip-dphy/Kconfig
 create mode 100644 drivers/staging/media/phy-rockchip-dphy/Makefile
 create mode 100644 drivers/staging/media/phy-rockchip-dphy/TODO
 create mode 100644 drivers/staging/media/phy-rockchip-dphy/phy-rockchip-dphy.c
 create mode 100644 drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.txt
 create mode 100644 drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-mipi-dphy.txt
 create mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
 create mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
 create mode 100644 drivers/staging/media/rkisp1/Kconfig
 create mode 100644 drivers/staging/media/rkisp1/Makefile
 create mode 100644 drivers/staging/media/rkisp1/TODO
 create mode 100644 drivers/staging/media/rkisp1/capture.c
 create mode 100644 drivers/staging/media/rkisp1/capture.h
 create mode 100644 drivers/staging/media/rkisp1/common.h
 create mode 100644 drivers/staging/media/rkisp1/dev.c
 create mode 100644 drivers/staging/media/rkisp1/dev.h
 create mode 100644 drivers/staging/media/rkisp1/isp_params.c
 create mode 100644 drivers/staging/media/rkisp1/isp_params.h
 create mode 100644 drivers/staging/media/rkisp1/isp_stats.c
 create mode 100644 drivers/staging/media/rkisp1/isp_stats.h
 create mode 100644 drivers/staging/media/rkisp1/regs.c
 create mode 100644 drivers/staging/media/rkisp1/regs.h
 create mode 100644 drivers/staging/media/rkisp1/rkisp1.c
 create mode 100644 drivers/staging/media/rkisp1/rkisp1.h
 create mode 100644 drivers/staging/media/rkisp1/uapi/rkisp1-config.h

-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
