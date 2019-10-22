Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 917A6E0B05
	for <lists+linux-rockchip@lfdr.de>; Tue, 22 Oct 2019 19:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L8BZduRNMD8eeho3CKXyIGO7l1l0ezJl2p/w+Hi9o44=; b=MWou2fyboYW4gi
	/qjpeojlOlJaUK/pa9t8aZdqKNrU2QANeIaKxcFxL2EWqgNH1wQqH+9zpdxCSXC1OX9b6O6wS1DyN
	nPNK4nqlDM90pmnm4mlXn76gHqw6g0VLJOFlRlOVNR8LxYwUl4ZuPs83REEiOSzfOaDV6PUEpmsWx
	IMwh3dgrdLzyAjNVz32SVYUypz68Y3PIQ4mx0nbe7Ndrlmj9wPiCmcxCtspYUqr3vk2lgcW5m9dSv
	+EQaktW/ZHiCGx26nislqgIRqwkgFeVghz905QnM43mSlAP0MFD8EHE97A7dEv7iMIQwiRHWFHPCz
	D5yks2kgqi+p/6PeUWaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMyNQ-000606-BH; Tue, 22 Oct 2019 17:55:24 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMyNN-0005ze-LR
 for linux-rockchip@lists.infradead.org; Tue, 22 Oct 2019 17:55:23 +0000
Received: by mail-pf1-x442.google.com with SMTP id q21so11091636pfn.11
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Oct 2019 10:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Bieu4vNF/+8kVFKGTBu4ktmF1t4JBGnFT262VX3GElY=;
 b=MeR3yWTfgnPTc5q67dmPWPZ7xAbvy2TiCO3PDJBlKbX/Q3JTc2co8+hrT1NrMC/nVr
 OrUH1XJFHX5j+futwl82W74M168QZCoidJzgtmfcGWXYOQdWLMwYMjxXLi+/Rfj5Hgdj
 87K24B9SnNsf8kakILuojUm6SNyrgsLX+QIyg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Bieu4vNF/+8kVFKGTBu4ktmF1t4JBGnFT262VX3GElY=;
 b=OKvMlWPVTOfF9EMIayGYZKYy0uyni+Zz4yhKqXz0Aw7ukr5kBnIRT6YHcaufz9xias
 +gm2oycDPYCTzvJyi79TKOeH/qjGC8zKvJIJEkaKkXDQ6sdllWrnhUENdK72Kr3TupJ8
 2k+S2CbjeSrmxUMYZLvJZaTLFJjUVq/wruv5pB/zbQ86WvMJ4TrOkQXZQM9GJvCKGC6q
 eWFT1yCWZSwCCFvtu6wOFebu/FPBk0c2id1Nywvhg6TQ5/URVscb2FBiHCW5+u4/o8TH
 TKF1YdqyKCLIul7P0aePQNuytJr0+nNzpViML66xVJseqsVmfJTUDal4r2+jEhzB9C9R
 gRPg==
X-Gm-Message-State: APjAAAXZwgWcadVk871eNHuB+aUJNrB5iGRenFM+zz0E2u+Gr9U5VdCY
 mIBTv6JT9xLPMmIgkGe6uCHjXQ==
X-Google-Smtp-Source: APXvYqy8wyu/VcHe4TQlLTazXzu5+/R7SvZ+Dz2sxhvsVJW8RGSIcdcjT+rm914HSV2BncUMh0Ghcg==
X-Received: by 2002:a17:90a:3608:: with SMTP id
 s8mr6310110pjb.44.1571766920627; 
 Tue, 22 Oct 2019 10:55:20 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id b3sm20454775pfd.125.2019.10.22.10.55.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 10:55:20 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 0/9] rockchip: rk3399: Add fastboot support
Date: Tue, 22 Oct 2019 23:24:49 +0530
Message-Id: <20191022175458.22604-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_105521_844631_CC200021 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de, Levin Du <djw@t-chip.com.cn>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This patchset add fastboot support on RK3399 and also
rework of CONFIG items related to fastboot support.

patch 0001 - 0005: existing gadget, fastboot config move

patch 0006: add phy interface for dwc3_uboot

patch 0007: 0008: dwc3 setup for rk3399

patch 0009: enable fastboot, nanopc-t4, roc-pc

SD card work fine, but eMMC seems unstable when partitioning
with gpt like below but it can be problem with fastboot though.

=> gpt write mmc 0 $partitions
Writing GPT: mmc write failed
** Can't write to device 0 **
** Can't write to device 0 **
error!
=> gpt verify mmc 0 $partitions
GUID Partition Table Header signature is wrong: 0x0 != 0x5452415020494645
gpt_verify_headers: *** ERROR: Invalid GPT ***
Verify GPT: error!

Any inputs?
Jagan.

Jagan Teki (9):
  gadget: Select USB_GADGET_MANUFACTURER for rockchip
  gadget: Select USB_GADGET_VENDOR_NUM for rockchip
  gadget: rockchip: USB_GADGET_PRODUCT_NUM
  gadget: rockchip: Add rk3128 USB_GADGET_PRODUCT_NUM
  fastboot: rockchip: Select FASTBOOT_FLASH[_MMC_DEV]
  usb: dwc3: Add phy interface for dwc3_uboot
  gadget: rockchip: Add rk3399 USB_GADGET_PRODUCT_NUM
  rockchip: Setup dwc3_device (for non-dm gadgets)
  [DO NOT MERGE] rockchip: rk3399: Enable fastboot

 arch/arm/mach-rockchip/board.c     | 32 ++++++++++++++++++++++++++++--
 configs/elgin-rv1108_defconfig     |  2 --
 configs/evb-rk3036_defconfig       |  5 -----
 configs/evb-rk3128_defconfig       |  2 --
 configs/evb-rk3229_defconfig       |  5 -----
 configs/evb-rk3288_defconfig       |  5 -----
 configs/evb-rk3328_defconfig       |  5 -----
 configs/evb-rv1108_defconfig       |  2 --
 configs/firefly-rk3288_defconfig   |  5 -----
 configs/kylin-rk3036_defconfig     |  5 -----
 configs/miqi-rk3288_defconfig      |  5 -----
 configs/nanopc-t4-rk3399_defconfig |  3 +++
 configs/phycore-rk3288_defconfig   |  5 -----
 configs/popmetal-rk3288_defconfig  |  5 -----
 configs/roc-rk3399-pc_defconfig    |  3 +++
 configs/rock2_defconfig            |  2 --
 configs/rock64-rk3328_defconfig    |  5 -----
 configs/tinker-rk3288_defconfig    |  5 -----
 configs/vyasa-rk3288_defconfig     |  3 ---
 drivers/fastboot/Kconfig           |  4 +++-
 drivers/usb/dwc3/core.c            | 26 ++++++++++++++++++++++++
 drivers/usb/dwc3/core.h            | 12 +++++++++++
 drivers/usb/gadget/Kconfig         |  6 ++++++
 include/dwc3-uboot.h               |  2 ++
 include/linux/usb/phy.h            | 19 ++++++++++++++++++
 25 files changed, 104 insertions(+), 69 deletions(-)
 create mode 100644 include/linux/usb/phy.h

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
