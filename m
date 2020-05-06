Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C43841C6A64
	for <lists+linux-rockchip@lfdr.de>; Wed,  6 May 2020 09:50:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uxt2tRmCdBBhctO2qWVXVALwYyAYqzflWfTi4CSk2CI=; b=ro4
	rcA0c/r6kFjP8p+cJa85XOEGDAjV573S+v41TQPukdtHFHHe/g4ii/pRsELhijgrUGd+ZYmq9VZ2w
	WATFItUZABry26a2ZqG3NUbjS2MWPNwP8OU3GiB8TocNu+pzhHRCnoRF250EYmbz9AAHFoYCSy/2P
	ZJ0bsxfAYKGX1iVtfbi42jRnsM8WESuYE2/yHXUuzg8zxcRo9ctG/dVpHBwTEvez/TdTa8iiStItN
	wFou4ZzdRQs5XmhKGexaExM0dodbDAs01zo0N1X9mIH9//vxQOjgKJ4esSCEAvLOtPnnJ3CFInlMd
	2Ajs+MS30/48ztdc1rVqxXdQown8Mlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWEpM-0006Zj-FG; Wed, 06 May 2020 07:50:48 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWEpI-0006ZC-Sq
 for linux-rockchip@lists.infradead.org; Wed, 06 May 2020 07:50:47 +0000
Received: by mail-pf1-x441.google.com with SMTP id 18so585471pfv.8
 for <linux-rockchip@lists.infradead.org>; Wed, 06 May 2020 00:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=iQ3nIJxJLce/t/uR84gAbO4APCoR2Xl1NH4LAypUwwM=;
 b=heoIEtYigaKwf+3LfGwquUKOACsPlsmt4Rg4ChkVXcaQjwWaemFo4dS/fEIpGNeT0e
 y7Gp0Awry3LwpLJkU9tLkA9XhjAdWVv2cpA//hM3xQWi74EqhK7p0XnRRrjYUoNZqZ14
 FUPkCU7Nz5LYkoChHKgYBVYeue1HgE5JmDbIU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=iQ3nIJxJLce/t/uR84gAbO4APCoR2Xl1NH4LAypUwwM=;
 b=fanNcPs5ouZuV9g739yXumVfO8lLcwms1a+XNcct2fzV6LdL1cqyG/XOwrT5pdzLEP
 oQDEltTsPLyGqndbJi++1uZJU88Cx+ijVgimpNy7H1NluX2oAzCILqbfrx8qViHDQmCt
 wjvmAtt320nkVUeQVkKZTj+wIJgPxBaJdXJ742JmI4cRnLy1FoykYEmdFiD17fCBrqnM
 aJCzfHOVLrhxeWtOovNPIzy+hS7ZE0UEr5tMxPRICWaF5qW1fDUoPoXqdAM0Id6QlQxF
 Q8r7zBGJe8/guPPsiikk6A2rvP+N00Uxo6+vs0zIUENyDxgRJvsMox1q3gcm/frMsr87
 sFOQ==
X-Gm-Message-State: AGi0PuZH5/HSPGSE+vpmc2zzY7gTsX+maD3Bt4zob+hxq0GZPJ2qMoUp
 zVvrd+iqIHBBKaggobHddYIu+l29B1Jjaw==
X-Google-Smtp-Source: APiQypJ7aWydM8MLynF9h59sGTMmBJ6h+tU4i+KMNcW+iFaD5uELvxacykqjqDaM1pFqrbES6KPF1Q==
X-Received: by 2002:a65:4c41:: with SMTP id l1mr6008887pgr.43.1588751443810;
 Wed, 06 May 2020 00:50:43 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:c598:8eeb:af7:7f36])
 by smtp.gmail.com with ESMTPSA id
 y186sm1011133pfy.66.2020.05.06.00.50.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 00:50:43 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 Simon Glass <sjg@chromium.org>, Frank Wang <frank.wang@rock-chips.com>,
 wmc@rock-chips.com, chenjh@rock-chips.com, heiko@sntech.de
Subject: [PATCH v2 0/7] rockchip: PHY drivers (USB)
Date: Wed,  6 May 2020 13:20:18 +0530
Message-Id: <20200506075025.1677-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_005045_365801_85B7A31B 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 Belisko Marek <marek.belisko@gmail.com>, linux-amarula@amarulasolutions.com,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is next following series from previous PHY drivers
on rockchip [1].

And also tested on top of Frank 'USB 3.0' series [2] from
patches 0/9 to 6/9.

With this USB 3.0 Host port seems to detecting USB storage
but need more testing on other modes as well.

Log on rock960 and NanoPC-t4:

rock960 => usb start
starting USB...
Bus usb@fe380000: USB EHCI 1.00
Bus usb@fe3c0000: USB EHCI 1.00
Bus dwc3: usb maximum-speed not found
Register 2000140 NbrPorts 2
Starting the controller
USB XHCI 1.10
scanning bus usb@fe380000 for devices... 1 USB Device(s) found
scanning bus usb@fe3c0000 for devices... 1 USB Device(s) found
scanning bus dwc3 for devices... 2 USB Device(s) found
       scanning usb for storage devices... 1 Storage Device(s) found
rock960 => usb tree
USB device tree:
  1  Hub (480 Mb/s, 0mA)
     u-boot EHCI Host Controller 
   
  1  Hub (480 Mb/s, 0mA)
     u-boot EHCI Host Controller 
   
  1  Hub (5 Gb/s, 0mA)
  |  U-Boot XHCI Host Controller 
  |
  +-2  Mass Storage (480 Mb/s, 200mA)
       Generic Mass Storage 789CDB36

=> usb start
starting USB...
Bus usb@fe380000: USB EHCI 1.00
Bus usb@fe3c0000: USB EHCI 1.00
Bus dwc3: usb maximum-speed not found
dwc3_of_parse: In
Register 2000140 NbrPorts 2
Starting the controller
USB XHCI 1.10
Bus dwc3: usb maximum-speed not found
dwc3_of_parse: In
Register 2000140 NbrPorts 2
Starting the controller
USB XHCI 1.10
scanning bus usb@fe380000 for devices... 1 USB Device(s) found
scanning bus usb@fe3c0000 for devices... 1 USB Device(s) found
scanning bus dwc3 for devices... 1 USB Device(s) found
scanning bus dwc3 for devices... 2 USB Device(s) found
       scanning usb for storage devices... 1 Storage Device(s) found
=> usb tree
USB device tree:
  1  Hub (480 Mb/s, 0mA)
     u-boot EHCI Host Controller

  1  Hub (480 Mb/s, 0mA)
     u-boot EHCI Host Controller

  1  Hub (5 Gb/s, 0mA)
     U-Boot XHCI Host Controller

  1  Hub (5 Gb/s, 0mA)
  |  U-Boot XHCI Host Controller
  |
  +-2  Mass Storage (480 Mb/s, 200mA)
       Generic Mass Storage 789CDB36

[2] https://patchwork.ozlabs.org/project/uboot/cover/20200430021620.25772-1-frank.wang@rock-chips.com/
[1] https://patchwork.ozlabs.org/project/uboot/cover/20200430214529.18887-1-jagan@amarulasolutions.com/

Any inputs?
Jagan.

Jagan Teki (7):
  clk: rk3399: Enable/Disable the USB2PHY clk
  clk: rk3399: Set empty for TCPHY assigned-clocks
  clk: rk3399: Enable/Disable TCPHY clocks
  phy: rockchip: Add Rockchip USB2PHY driver
  arm64: dts: rk3399: Move u2phy into root port
  phy: rockchip: Add Rockchip USB TypeC PHY driver
  usb: dwc3: add dis_del_phy_power_chg_quirk

 arch/arm/dts/rk3399.dtsi                      | 108 +--
 drivers/Makefile                              |   1 +
 drivers/clk/rockchip/clk_rk3399.c             |  38 +
 drivers/phy/Kconfig                           |   1 +
 drivers/phy/rockchip/Kconfig                  |  21 +
 drivers/phy/rockchip/Makefile                 |   7 +
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 312 +++++++
 drivers/phy/rockchip/phy-rockchip-typec.c     | 796 ++++++++++++++++++
 drivers/usb/dwc3/core.c                       |   6 +
 drivers/usb/dwc3/core.h                       |   1 +
 include/dwc3-uboot.h                          |   1 +
 11 files changed, 1238 insertions(+), 54 deletions(-)
 create mode 100644 drivers/phy/rockchip/Kconfig
 create mode 100644 drivers/phy/rockchip/Makefile
 create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-usb2.c
 create mode 100644 drivers/phy/rockchip/phy-rockchip-typec.c

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
