Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 994671CC2E7
	for <lists+linux-rockchip@lfdr.de>; Sat,  9 May 2020 18:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Lf5e21R9BaHpKUM3rKFb0I6yxHp519aGB2d5b7xOTRE=; b=Uq7
	UemP/9ec6+/g3EbKzE8Ya4RlxB6EX0fB4/F4xvWcWGNwUwFoynNdSuXxrEuCdNgrkygewSpdAihx0
	/nItRNSSI+HuxqOSWoq3Zc+tv4FK+IhwDE35/MMTCd6QoedYLJYVeExWrtTmJX0odYiQxQldULlP0
	KNUUr0kEaFktJMCs+Yk5HJkU++jAGs/3Zlpdh/5dIaqkBdNHDJZF9GxQkMDvVTfdGtKZQXW8jkgdJ
	jK8BN/ZS/J13BoypJNW9J7nuTqF3DyfR8ciKAKSVm9NLhZcBuucLIY4d/BAURcUw0A/DrXYX7pO8X
	PR5S4bFOLDlMtHqDF1HEW+APLPGkaxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXSmK-0002x5-Mi; Sat, 09 May 2020 16:56:44 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXSmH-0002wA-8D
 for linux-rockchip@lists.infradead.org; Sat, 09 May 2020 16:56:42 +0000
Received: by mail-pf1-x444.google.com with SMTP id z1so2601474pfn.3
 for <linux-rockchip@lists.infradead.org>; Sat, 09 May 2020 09:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=B9ZuSY7carRYxZsnl7MNKYtuOx+UchWnWiSMIaXm3x4=;
 b=GbzWLBCmZcrY6H6L4FoK+tPZIigyZkdob5scS0fOgFLEixNiYSQ63V+shpdtyWJhoK
 hQSr8vOtoMZGp36/mlItS+jPEfjCjl8qikIcq87rbKKgGzLWM/F5RE/kyYvu7N7Vag6l
 qvYyM6jBSiMCPXTOu+/V61FK4WHI1QjNdvfss=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=B9ZuSY7carRYxZsnl7MNKYtuOx+UchWnWiSMIaXm3x4=;
 b=k6k0RT/ZHX16OL/GvVdpDwMLcsUq/250IAXqtwrC4Nd2IvqJtj9ZedIPb5QtoIv4lc
 XVyJArQc5SDOBjPPi21QAZg+NZWNjDOZSQfa3FjEIowkZ12r5HvXTyxQ8kFPeaY3c4d8
 CqoR2Nk3ZFxfg+gUL1qK04z6DTVDoh16aH93WrduA82GZD9mcsbXC0F237ZT/kSpX5fl
 XvfKr0M744TVGW2wIfkKaRhcbVO8gqegZqEYuAsso5WYYgXJR/MPTs8KoahIv1+fZAag
 G3MKpOKxlcbUxE9++FYA/vQeZtFNwOnMcN3SaGGpc9atIIHx4m1+Lc6yuvGjdsY2rslL
 UkWQ==
X-Gm-Message-State: AGi0PuZCX5k/f4mtn17wShcbCB0xl3zbmARt9BfwQ8F9UXQ+wYRCJeEU
 dEeUWTp77uS79X6Zm46amx6IFA==
X-Google-Smtp-Source: APiQypKXFGkORaaxvphNaazRHHzsFJIT7IdIlZVUi4rR7vHC+k8//Gn1ZKMUTQ68jq0Cxg6pjzMXRw==
X-Received: by 2002:a63:6602:: with SMTP id a2mr7330321pgc.281.1589043397338; 
 Sat, 09 May 2020 09:56:37 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:21f6:1c8f:ae94:fb04])
 by smtp.gmail.com with ESMTPSA id x195sm4977098pfc.0.2020.05.09.09.56.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2020 09:56:36 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v3 0/6] rockchip: Add PCIe host support
Date: Sat,  9 May 2020 22:26:18 +0530
Message-Id: <20200509165624.20791-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_095641_294599_AA32C35D 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: patrick@blueri.se, u-boot@lists.denx.de, shawn.lin@rock-chips.com,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com, linux-amarula@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This series support PCIe host controller support
on rockchip rk3399 platform.

It is based on previous version[1] changes.

Works well on rk3399 boards like rock960, nanopc-t4 
and roc-kr3399-pc-mezzanine board as Gen1 configurable 
host with M.2 SSD.

Changes for v3:
- fix few clock register values
- collect mani a-b
Changes for v2:
- handle USB, GMAC clocks
- collect kever r-o-b tag
- simplify rd and wr conf API 

[1] https://patchwork.ozlabs.org/project/uboot/cover/20200430070412.12499-1-jagan@amarulasolutions.com/

Any inputs?
Jagan.

Jagan Teki (6):
  clk: rk3399: Add enable/disable clks
  clk: rk3399: Enable/Disable the PCIEPHY clk
  pci: Add Rockchip PCIe controller driver
  pci: Add Rockchip PCIe PHY controller driver
  rockchip: Enable PCIe/M.2 on rk3399 board w/ M.2
  rockchip: Enable PCIe/M.2 on rock960 board

 arch/arm/dts/rk3399-u-boot.dtsi             |   1 +
 board/vamrs/rock960_rk3399/rock960-rk3399.c |  23 +
 configs/nanopc-t4-rk3399_defconfig          |   4 +
 configs/roc-pc-mezzanine-rk3399_defconfig   |   4 +
 configs/rock960-rk3399_defconfig            |   5 +
 drivers/clk/rockchip/clk_rk3399.c           | 154 ++++++
 drivers/pci/Kconfig                         |   8 +
 drivers/pci/Makefile                        |   1 +
 drivers/pci/pcie_rockchip.c                 | 491 ++++++++++++++++++++
 drivers/pci/pcie_rockchip.h                 | 142 ++++++
 drivers/pci/pcie_rockchip_phy.c             | 205 ++++++++
 11 files changed, 1038 insertions(+)
 create mode 100644 drivers/pci/pcie_rockchip.c
 create mode 100644 drivers/pci/pcie_rockchip.h
 create mode 100644 drivers/pci/pcie_rockchip_phy.c

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
