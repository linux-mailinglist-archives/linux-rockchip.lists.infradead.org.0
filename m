Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F22924D9D3
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 20:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SIqQgSSgANb/QlBUT8X3TSKq9ZvdbEF799++uO3j7+k=; b=XIC621QWpKDt4R
	PGsCv5OYnJszxfyhMnk7VvESYXF/V0LWekXnlJUdrxXUVZtvRcvwDqxe+6qmhNN9Az6BAOG4pEosn
	ybt/DmdqQ+BD7e0AIJ1wxkz7UZnBx8UX9JcwMrQIg0Ult31mTQ+uXlqRMl4BsLbOgLMUTyw25dJ0f
	V+205yRGwzic7ofNs/9kYnx3JkICMkS6vH33GSMFsFIZ6v448dUNyKE12r+wc/90QOGazQMqUkeU1
	xRpYH1M/+m9uttmfOvD3ZAcQWxnTXhQzIMedYhPND20/kCBSzUX3kL5Tk9QZxrkVt2xsGI7gxT4P/
	nZtV19BMGxvq0bNeydUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he2DU-0002nN-4d; Thu, 20 Jun 2019 18:55:24 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he2DQ-0002mf-QK
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 18:55:22 +0000
Received: by mail-pg1-x544.google.com with SMTP id l19so2032190pgh.9
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 11:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dliYcFtfFRKcruaQ18nkUGrUM1yrABrfWlip8Ygjlfg=;
 b=XXAFy64wkrwMZaTTOKb/dQAIgfy4KLu2baqWj/BUqvTAlDxSMUrfhhU/xmXqDqm+G/
 6RWD2JyCoQ7q/huhm2o6V/LzKTrUTvh/7RwASieiDc641+A+Pz/TBZXAWtZ6gPDPtDnX
 gNwYhLPAJxcKvucVYJEh5gl5PAgmEC+405ZDo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dliYcFtfFRKcruaQ18nkUGrUM1yrABrfWlip8Ygjlfg=;
 b=qCduezrZ8ryr0nRBy7G173MdF9HrEJpjsb7M8m8IxuVoomfZ8pI2ClkL0srci+STff
 oJjd8nyrN+muR02HQC13df/Jea0jDvxxfE3COG4NVtXZTcrtuIx4Q95dkduEPqEpU+BT
 AJFlMk4stq+qfCQklXrA58OWq504g3EIc3rZW12WhCbYJKqA0quhRT58HS/eH1S/jwr0
 0HZVFIOU8kq1wy08prrLJNIKcUqzFqJiGAlgKEh7U+tQ3D4sFcxU9YF4x/ruZV2/Y8TE
 qLvaQLNmgacJS+/f5FrS3uBH6rsfEa5iQauS/wu/0wrfYEz1MOpKKsTiabNsVbHhGGmd
 K+Mg==
X-Gm-Message-State: APjAAAU1fsYAuyQg1I1dQsJlXV0SHEBOTGMN2bbqCl2SjL5VhyUsCY1D
 X0YurUSA7NIGnchT2a/+NFgR/g==
X-Google-Smtp-Source: APXvYqywK7zeTR3T/3D+OBgSp1OUfPkOaUGzNwmBkzh1l0ukiwhZgBud2mRK8NcDYInGBQSwhoyhIQ==
X-Received: by 2002:a63:35c7:: with SMTP id c190mr7972977pga.445.1561056919652; 
 Thu, 20 Jun 2019 11:55:19 -0700 (PDT)
Received: from localhost.localdomain ([183.82.225.128])
 by smtp.gmail.com with ESMTPSA id k3sm372183pju.27.2019.06.20.11.55.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 11:55:19 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de
Subject: [PATCH v2 0/8] rockchip: rk3399: Use spl_board_init in SPL, TPL
Date: Fri, 21 Jun 2019 00:24:58 +0530
Message-Id: <20190620185506.11449-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_115520_862221_C5AB9F98 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [183.82.225.128 listed in dnsbl.sorbs.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is v2 set for previous v1. No much diff, except the
latest rebase.

Usually spl_board_init has preloader_console_init which
would help to print boot up banner during SPL and TPL.

The current rk3399 lacking that in few of the boards, 
this series make reuse of spl_board_init in SPL and TPL stages.

with this series:
================

U-Boot TPL 2019.07-rc1-00243-g3f0cad6bd2 (May 08 2019 - 11:29:32 +0530)
Trying to boot from BOOTROM
Returning to boot ROM...

U-Boot SPL 2019.07-rc1-00243-g3f0cad6bd2 (May 08 2019 - 11:29:32 +0530)
Trying to boot from MMC1


U-Boot 2019.07-rc1-00243-g3f0cad6bd2 (May 08 2019 - 11:29:32 +0530)

Model: FriendlyElec NanoPC-T4
DRAM:  3.9 GiB
MMC:   dwmmc@fe310000: 2, dwmmc@fe320000: 1, sdhci@fe330000: 0
Loading Environment from MMC... *** Warning - bad CRC, using default environment

In:    serial@ff1a0000
Out:   serial@ff1a0000
Err:   serial@ff1a0000
Model: FriendlyElec NanoPC-T4
Net:   eth0: ethernet@fe300000
Hit any key to stop autoboot:  0 
=>

without this series:
===================

U-Boot TPL board init
Trying to boot from BOOTROM
Returning to boot ROM...
U-Boot SPL board init
Trying to boot from MMC1

U-Boot 2019.07-rc1-00243-g3f0cad6bd2 (May 08 2019 - 11:29:32 +0530)

Model: FriendlyElec NanoPC-T4
DRAM:  3.9 GiB
MMC:   dwmmc@fe310000: 2, dwmmc@fe320000: 1, sdhci@fe330000: 0
Loading Environment from MMC... *** Warning - bad CRC, using default environment

In:    serial@ff1a0000
Out:   serial@ff1a0000
Err:   serial@ff1a0000
Model: FriendlyElec NanoPC-T4
Net:   eth0: ethernet@fe300000
Hit any key to stop autoboot:  0 
=>

Any inputs?
Jagan.

Jagan Teki (8):
  board: rk3399: Drop explicit uart enablement in spl_board_init
  rockchip: rk3399: Support common spl_board_init
  rockchip: rk3399: spl: Mark printascii into debug
  rockchip: rk3399: Move u-boot, dm-pre-reloc of uart0, uart2
  rockchip: rk3399: Enable SPL_BOARD_INIT
  rockchip: rk3399: tpl: Add spl_board_init
  rockchip: rk3399: tpl: Mark printascii into debug
  rockchip: rk3399: Enable TPL_BOARD_INIT

 arch/arm/dts/rk3399-gru.dtsi                  |  1 -
 arch/arm/dts/rk3399-puma.dtsi                 |  1 -
 arch/arm/dts/rk3399-u-boot.dtsi               |  8 +++
 arch/arm/mach-rockchip/Kconfig                |  2 +
 arch/arm/mach-rockchip/rk3399-board-spl.c     | 65 ++++++++++++++++++-
 arch/arm/mach-rockchip/rk3399-board-tpl.c     |  9 ++-
 board/rockchip/evb_rk3399/evb-rk3399.c        | 29 ---------
 .../puma_rk3399/puma-rk3399.c                 | 58 -----------------
 board/vamrs/rock960_rk3399/rock960-rk3399.c   | 31 ---------
 configs/puma-rk3399_defconfig                 |  1 -
 10 files changed, 82 insertions(+), 123 deletions(-)

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
