Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E435D1BF0C0
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Apr 2020 09:04:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XE9vtX5S1S2rTqDS6G+Nj1QeA5ieQyBaI6t0q4uhPUQ=; b=g8q
	f/3dfxFe/1eBkP2/gaiXYnyvSX0YO5NbbzAfW9ephwwJ3JAAFXlOxSNWl3pcbbJvZMKROry9DxIW8
	JrIpsXddECd3H8RlZtL+yXPDgCuc9WlI5ISxIbYrAKQm6W+T/HleIOtiqYcc9cWptJ2HVuSYXOwYK
	rcUQU0JpACxHk6iUGLSIGK/umO1L7G1wWD3/mYUqq2YDBwkpZeZTOhJhfT3/5yKpvPwJV4AYcrDf/
	E6+iw8YRemeUFN0OB98nxtrdNtICy451jQAejwnecqWAqYxqA1v26+i14Fx0hwIrTqCDnRP4Dz+21
	J2wSASYvxzo89gLmE3pcqlu6CsPOdlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU3FE-00066o-Dd; Thu, 30 Apr 2020 07:04:28 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU3F9-00065n-TA
 for linux-rockchip@lists.infradead.org; Thu, 30 Apr 2020 07:04:25 +0000
Received: by mail-pf1-x444.google.com with SMTP id w65so2443682pfc.12
 for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2020 00:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=li/Zb4mnPfD0Nmbji9RC2oKn/VTNSvLAxiaobEeGvYM=;
 b=HgyYiIuuBO99mFXsWDA/vGGozZvmRAzyds3rMtzn0NN9rhzhVLf5F5dPiGgQ1EWIHK
 tlOC+ksmm9MEBIaJP/SO3ka/AimFJB9LyHAPNILqNgR6E69eK6Gba213gaqfGY9O59qi
 gpjr19+5zqkm3l+2GtcNqmES+Zs1Y3IuKFO+Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=li/Zb4mnPfD0Nmbji9RC2oKn/VTNSvLAxiaobEeGvYM=;
 b=J9OBCupskX3VRD6TGD4hW2xXHacKjXq925ibxzYMEvhE11BD3wDO/O8z8doi0urSyc
 aDr8iBzRXOIvtQaJRF/RROe6sjxC/WjK+FrWVJIgqmMGSY3ex4ZVDDMj6HyM65Lvo/HU
 MhkortQCy6S5JFSjd8nza+yV81vflvb21B7S7buljvwgRjge+c08bFDJAAKSShTvLQOy
 Mpz1SaGv242kKzH7GSKHQbxFYZo9Ontipj9nSkaVIj5WxQDGANufrlONrMIe+wcpV6b7
 RK5pZZYb+YOk7Sprp1AjDRFo/nXHly7aVGdfsE8URFqsil3d7/zkr+2JMc6UFw8X0ruI
 VRnw==
X-Gm-Message-State: AGi0PuYx1/+QNU1wsSS7G0zC4FKjcN+8DHV5HihervPPmxi7h9e1q+wh
 55xyRb+1ib/80H7ZOdkXu8xGcg==
X-Google-Smtp-Source: APiQypKWx8PMVWFLKNfliUiNeyZIXxqk8FaJhdZFo8n0bGc9A5tw7XFnRfgX1f0KEEnOTMRmImOVYA==
X-Received: by 2002:a63:e210:: with SMTP id q16mr1973617pgh.26.1588230262313; 
 Thu, 30 Apr 2020 00:04:22 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:6514:3619:d1af:85f6])
 by smtp.gmail.com with ESMTPSA id p64sm964143pjp.7.2020.04.30.00.04.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 00:04:21 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 0/8] rockchip: Add PCIe host support
Date: Thu, 30 Apr 2020 12:34:04 +0530
Message-Id: <20200430070412.12499-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_000424_371134_57DB452D 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: patrick@blueri.se, linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
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

Changes for v2:
- handle USB, GMAC clocks
- collect kever r-o-b tag
- simplify rd and wr conf API 

[1] http://patchwork.ozlabs.org/project/uboot/cover/20200425110354.12381-1-jagan@amarulasolutions.com/

Any inputs?
Jagan.

Jagan Teki (8):
  iopoll: Add dealy to read poll
  iopoll: Add readl_poll_sleep_timeout
  clk: rk3399: Add enable/disable clks
  clk: rk3399: Enable/Disable the PCIEPHY clk
  pci: Add Rockchip PCIe controller driver
  pci: Add Rockchip PCIe PHY controller driver
  rockchip: Enable PCIe/M.2 on rk3399 board w/ M.2
  rockchip: Enable PCIe/M.2 on rock960 board

 arch/arm/dts/rk3399-u-boot.dtsi             |   1 +
 board/vamrs/rock960_rk3399/rock960-rk3399.c |  20 +
 configs/nanopc-t4-rk3399_defconfig          |   4 +
 configs/roc-pc-mezzanine-rk3399_defconfig   |   4 +
 configs/rock960-rk3399_defconfig            |   5 +
 drivers/clk/rockchip/clk_rk3399.c           | 154 ++++++
 drivers/pci/Kconfig                         |   8 +
 drivers/pci/Makefile                        |   1 +
 drivers/pci/pcie_rockchip.c                 | 491 ++++++++++++++++++++
 drivers/pci/pcie_rockchip.h                 | 142 ++++++
 drivers/pci/pcie_rockchip_phy.c             | 205 ++++++++
 include/linux/iopoll.h                      |  23 +-
 12 files changed, 1049 insertions(+), 9 deletions(-)
 create mode 100644 drivers/pci/pcie_rockchip.c
 create mode 100644 drivers/pci/pcie_rockchip.h
 create mode 100644 drivers/pci/pcie_rockchip_phy.c

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
