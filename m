Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D26D51BBA7D
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 Apr 2020 12:00:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4PbrDgwSMbW/CKB5Ug2L3G/j7ldEvrDsHOfTyPopoiU=; b=J4q
	Rxvuk5gI/gKSLMf0WO4Nm/9OGCdwo9KsJ3JZq5rMXREhM3Y/zTIbdwWewBNtvav9lqXztG5uafVNT
	LHSQDuYeFEbMI1Uuv4uYhryy1qqkBPJA+UNKS01OWtMHKbuAuJNZmSYukCy6UF5AHB3J5qfldged9
	yQQbE9pcibTbKalBqERVgpUi6MouV2y+4g2V9IYRK0YhM1vqOBikOLEPPCU5EIszMvtppAuXNbh3j
	L3KEDlFwrRCFIdn/m1wit+LxQhu4nSdNFOwx4f3Gc9PZ1ynZ8rvaXyxIBFMKSCOI/kfeV5vH9jk58
	xwpC/6vAeNwy0krSzfBx06Z5JMFRn3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTN2Z-0006AB-R6; Tue, 28 Apr 2020 10:00:35 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTN2V-00069V-RX
 for linux-rockchip@lists.infradead.org; Tue, 28 Apr 2020 10:00:33 +0000
Received: by mail-pj1-x1044.google.com with SMTP id a32so922968pje.5
 for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2020 03:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=iNOM3GcezM8/RM5nQcv/ag4VQrnotIx1EJZF5ZfA09E=;
 b=L1puKnJRENWs5lVKpznC/FuREvpUyZMnl0JwRccHTnhrVcIqLkfevgvL9PLQHADEMW
 OniYV8V7q0wbuXQRa42bzxpIXDlB2lAYA/Gv5yo5IVyRV20ckDQLWzTFEeOBAHSODaoq
 NngBgXKbUEE/FnQzh65Eb3BFmkGC4DaYkfsqc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=iNOM3GcezM8/RM5nQcv/ag4VQrnotIx1EJZF5ZfA09E=;
 b=ofdB0/t/2sTeqglLfCkSifumhE7eiWyNPtv3D/GU1sjr3amCKqpKtsLrfG6n+cD8Rm
 BlbAuzquMbIak4Pf5XHNtPrcBW3sJcRMBRIW0sS94tvobyOh49O3NzqypZIA2MPacA9o
 DpjYzeJw6B322ULoWlaG1Yn7xEd7V1IBmZmaqBc8bBWYfg9G22LJ/WT95e70QzXiaMRN
 E2CTPgR1ME/8U3FK+3jquW+C0Sd1RzS5WP/OEZhz0bQ8U6RK7m2MNhEtIjGpsSU2PlxO
 LcL5TtWFxPJK4PvHnAd3hiaBrhL71eBJ1RMHNONF+UVMkFYFK/QJHFXMLqxpfx31ePry
 yucw==
X-Gm-Message-State: AGi0PuayDnQoOqpyXy6VWANuivHfrZiAwfIK5L8Lha9138WHNsIXg9F4
 YLIFDqPiu4Z1NvMGoPTYb6DRuw==
X-Google-Smtp-Source: APiQypK010OQOQC4+dpdob+ueWTWQDGP+4zKlw19XD4uheprGnkwZ6KvvWgSu2mv+jfSlSNFtkPSRw==
X-Received: by 2002:a17:90a:2ac7:: with SMTP id
 i7mr4142646pjg.130.1588068030495; 
 Tue, 28 Apr 2020 03:00:30 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:f9c1:1c6a:49dc:267d])
 by smtp.gmail.com with ESMTPSA id j32sm12676379pgb.55.2020.04.28.03.00.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 03:00:29 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 0/6] rk3399: Sync linux v5.7-rc1 dts(i)
Date: Tue, 28 Apr 2020 15:30:13 +0530
Message-Id: <20200428100019.19155-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_030032_316018_1A420587 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This would help to add new boards along with new drivers
like DWC3, PCIe on rk3399 platform.

So, add v5.7-rc1 linux-next dts(i) files on rk3399 platform.

Changes for v2:
- keep roc-rk3399-pc dc_12v changes to -u-boot.dtsi 

[1] https://patchwork.ozlabs.org/project/uboot/cover/20200425105319.12009-1-jagan@amarulasolutions.com/

Any inputs?
Jagan.

Jagan Teki (5):
  arm64: dts: rk3399-puma: Move u-boot properties into -u-boot.dtsi
  arm64: dts: rk3399-evb: Move u-boot properties into -u-boot.dtsi
  clk: rk3399: Set empty for HCLK_SD assigned-clocks
  arm64: dts: rk3399: Sync v5.7-rc1 from Linux
  arm: dts: rk3399: Sync roc-pc-mezzanine from v5.7-rc1

Suniel Mahesh (1):
  rk3399: Add ROC-RK3399-PC Mezzanine board

 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/cros-ec-keyboard.dtsi            |  10 +-
 arch/arm/dts/cros-ec-sbs.dtsi                 |  39 +-
 arch/arm/dts/rk3399-evb-u-boot.dtsi           |   8 +
 arch/arm/dts/rk3399-evb.dts                   | 522 ++++++++----
 arch/arm/dts/rk3399-ficus.dts                 |   6 +
 arch/arm/dts/rk3399-firefly.dts               | 251 ++++--
 arch/arm/dts/rk3399-gru-bob.dts               |  16 +-
 arch/arm/dts/rk3399-gru-chromebook.dtsi       |  40 +-
 arch/arm/dts/rk3399-gru-kevin.dts             |  34 +-
 arch/arm/dts/rk3399-gru.dtsi                  |  90 +-
 arch/arm/dts/rk3399-khadas-edge.dtsi          |   3 +
 arch/arm/dts/rk3399-leez-p710.dts             |  36 +-
 arch/arm/dts/rk3399-nanopc-t4.dts             |  47 +-
 arch/arm/dts/rk3399-nanopi4.dtsi              |  66 +-
 arch/arm/dts/rk3399-orangepi.dts              |  79 +-
 arch/arm/dts/rk3399-puma-u-boot.dtsi          |  31 +-
 arch/arm/dts/rk3399-puma.dtsi                 | 578 +++++--------
 .../dts/rk3399-roc-pc-mezzanine-u-boot.dtsi   |   6 +
 arch/arm/dts/rk3399-roc-pc-mezzanine.dts      |  93 ++
 arch/arm/dts/rk3399-roc-pc-u-boot.dtsi        |  36 +
 arch/arm/dts/rk3399-roc-pc.dts                |   3 +-
 arch/arm/dts/rk3399-roc-pc.dtsi               |  35 +-
 arch/arm/dts/rk3399-rock-pi-4.dts             | 129 +++
 arch/arm/dts/rk3399-rock960.dts               |  49 ++
 arch/arm/dts/rk3399-rock960.dtsi              |  13 +-
 arch/arm/dts/rk3399-rockpro64.dts             | 751 +----------------
 arch/arm/dts/rk3399-rockpro64.dtsi            | 797 ++++++++++++++++++
 arch/arm/dts/rk3399-u-boot.dtsi               |   1 +
 arch/arm/dts/rk3399.dtsi                      | 583 ++++++++-----
 board/firefly/roc-pc-rk3399/MAINTAINERS       |   2 +
 configs/roc-pc-mezzanine-rk3399_defconfig     |  67 ++
 drivers/clk/rockchip/clk_rk3399.c             |   1 +
 33 files changed, 2763 insertions(+), 1660 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-roc-pc-mezzanine-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-roc-pc-mezzanine.dts
 create mode 100644 arch/arm/dts/rk3399-rockpro64.dtsi
 create mode 100644 configs/roc-pc-mezzanine-rk3399_defconfig

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
