Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE939101D2F
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 Nov 2019 09:26:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QyPTRQP6GTIZQSk+RsC3C0gVz2RypHskqiUKI9ZoxQo=; b=aCl2wR0vVuQ0ve
	fu27myR46mn61vcIKdXAXm27u9uG3aCc/ai1Gwke041lSEck3i09DLnqu/lFCK1nRGRoQ7wF74Cc0
	UywT4GYraMORMf9hEpm5q9mpRQHdnKDxNuOF0Cez5TXEgZyUTZMKO2QEoNlzRfabaygxFa2bxf0at
	Wh9OzVO+75+KQMxo1fZK1EN0ffXMFQvMs+nJQBRvEbG5vq3Sr0KKbLzXP9iC/NVqA2SHEv3zd6Lfs
	+p/AV8QOewmRbP34BKaZkm0ggJv7K3QyWCBwlJev1cFjctrPR2CGJupzXR2+ZkJQkCB41c4sXYkbE
	QgQ9OqHDgR83WIGTmCww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWyqO-0001eA-Vt; Tue, 19 Nov 2019 08:26:40 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWyqJ-0001dW-BP
 for linux-rockchip@lists.infradead.org; Tue, 19 Nov 2019 08:26:39 +0000
Received: by mail-pg1-x52c.google.com with SMTP id k32so5283895pgl.2
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Nov 2019 00:26:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0jzcsQL7X9uXyRzO1HHA95zvKPXeBG7xR+XHJn4gpSs=;
 b=CBV978NKRVDSF8PYthVKRzaGRitwU/rDL7gSivsRRiF60T3tQeE6Mlc/4Jn811b8AK
 zbexGPSxShgHQOKTOVf7Fs+TiO/f9Rvnt1ZWNwCitrTY/ZFeFF9pbPkWsZqw3gvmSGvt
 mG2Jc8AAtnJYVJfK2e+/NzDc1FwLlQ1QW8RpM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0jzcsQL7X9uXyRzO1HHA95zvKPXeBG7xR+XHJn4gpSs=;
 b=sc06GCA+pkTX5y1IRmchFygO+CGBzX1s8IS9qERtIk4vdhuj6lwdVvZdZjlwfkgwQr
 FPH9oHcGj47pyMF4KUx1Pyv5XVdaeS1WFn+5zEZUK/bu36+Ta7th55kApfbGCKrjxMSm
 wkSLCAFlsFzd8mCikCjcoiFuHqnmvb9HOwVnVW87Bcexz/cqs5NrzfpbthvCjtBI5D5x
 Vei9gFt1Y69HYwOOs5UZ4Wi7nVdbJOatT4E8IeXLz5KVEuGgafSx62z2d9ZPQijE40wX
 Drw83CH1D5E2+aCdcLSn/TyxGh2JvH8nkhXXre2UtFynYVoEGNDQIz9zdiGJKC032KcG
 ayCg==
X-Gm-Message-State: APjAAAWTrJJmVPb7VLe5/CjYcpBrw8K6IY71hIGdv1YjJmS32BINGOT8
 ph7tEPUXVLYDrgbgxhsP0lAySg==
X-Google-Smtp-Source: APXvYqyS60dCuMaplzO3hTzwNc2PnUFETPW6SKXP+kG03BcwBDySkKKvGQkc4xPqDywvoAWYKx4FxQ==
X-Received: by 2002:a63:1042:: with SMTP id 2mr4365515pgq.59.1574151993411;
 Tue, 19 Nov 2019 00:26:33 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id u7sm2312221pjx.19.2019.11.19.00.26.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 00:26:32 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 00/10] rockchip: rk3399: Add fastboot support
Date: Tue, 19 Nov 2019 13:56:13 +0530
Message-Id: <20191119082623.6165-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_002635_531609_86746E98 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: u-boot@lists.denx.de, Levin Du <djw@t-chip.com.cn>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is v2 set for fastboot support on rk3399, tested on
rock960 and rebased on u-boot-rockchip/master

Changes for v2:
- collect Levin Du Tested-by
- fix rk3399 product number (Thanks to Levin Du)
- add patch to fix fastboot flash device num for rk3328
- add patch to enable gadget on rock960
- rebased on u-boot-rockchip/master

[1] https://patchwork.ozlabs.org/cover/1181569/

Any inputs?
Jagan.

Jagan Teki (10):
  gadget: Select USB_GADGET_MANUFACTURER for rockchip
  gadget: Select USB_GADGET_VENDOR_NUM for rockchip
  gadget: rockchip: USB_GADGET_PRODUCT_NUM
  gadget: rockchip: Add rk3128 USB_GADGET_PRODUCT_NUM
  fastboot: rockchip: Select FASTBOOT_FLASH[_MMC_DEV]
  fastboot: rockchip: Fix rk3328 default mmc device
  usb: dwc3: Add phy interface for dwc3_uboot
  gadget: rockchip: Add rk3399 USB_GADGET_PRODUCT_NUM
  rockchip: Setup dwc3_device (for non-dm gadgets)
  rock960: Enable USB Gadget

 arch/arm/mach-rockchip/board.c    | 32 +++++++++++++++++++++++++++++--
 configs/elgin-rv1108_defconfig    |  2 --
 configs/evb-rk3036_defconfig      |  5 -----
 configs/evb-rk3128_defconfig      |  2 --
 configs/evb-rk3229_defconfig      |  5 -----
 configs/evb-rk3288_defconfig      |  5 -----
 configs/evb-rk3328_defconfig      |  5 -----
 configs/evb-rv1108_defconfig      |  2 --
 configs/firefly-rk3288_defconfig  |  5 -----
 configs/kylin-rk3036_defconfig    |  5 -----
 configs/miqi-rk3288_defconfig     |  5 -----
 configs/phycore-rk3288_defconfig  |  5 -----
 configs/popmetal-rk3288_defconfig |  5 -----
 configs/rock2_defconfig           |  2 --
 configs/rock64-rk3328_defconfig   |  5 -----
 configs/rock960-rk3399_defconfig  |  2 ++
 configs/tinker-rk3288_defconfig   |  5 -----
 configs/tinker-s-rk3288_defconfig |  5 -----
 configs/vyasa-rk3288_defconfig    |  3 ---
 drivers/fastboot/Kconfig          |  3 ++-
 drivers/usb/dwc3/core.c           | 27 ++++++++++++++++++++++++++
 drivers/usb/dwc3/core.h           | 12 ++++++++++++
 drivers/usb/gadget/Kconfig        |  7 +++++++
 include/dwc3-uboot.h              |  2 ++
 include/linux/usb/phy.h           | 19 ++++++++++++++++++
 25 files changed, 101 insertions(+), 74 deletions(-)
 create mode 100644 include/linux/usb/phy.h

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
