Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A171733D
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 10:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AX7BbDIDuD9P5LWDJWWh1Mke/K1e59dbDEDrVHb6Wis=; b=tYeIYoxhwBa/CW
	CnI+16g2QU5AMovcT9LgCQ/OwfXXRjN/D/OP7YOOorCQYJlgmuSB2BSAzoOMbH8NSCti8n28OICu7
	kDu6hAxd/wTAGIWm67fuf9+BgVusveSrrL+uiV+VhLbf8p534S1DUIA/owkZRXSaudPzI5T2uMRAi
	7Wee1a/r2UqzKYLUS36NFs+os4glP3FYUfnGHeGmJ4OgIjOUh+KTYeCSpowR3Rv6f5U52TR88Nsmy
	miNOPJ4H5aUWsUjmwlLjMKDXIwNSbzSqdOiTp/S3a32w7oONuIzNC8M+V3KEpxbUlp+Ec+/OcP2wt
	O+pbahkuuGxjur+KWcbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOHdh-0007Kv-7G; Wed, 08 May 2019 08:09:21 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOHdd-0007Il-T7
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 08:09:19 +0000
Received: by mail-pg1-x544.google.com with SMTP id p6so9691742pgh.9
 for <linux-rockchip@lists.infradead.org>; Wed, 08 May 2019 01:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ri35iDPFNB6jJXy7sK6LG9z2tvNm8n8X6YJdtz56Zf0=;
 b=Z0PsD2T7Dn3ypUrowtekgRdRqBR68J+vB8cH3oRASvNLyldsm10HhFPf7T34MJs25K
 ZyTsxM91iBY70Clcvt53a50Ac/1rEmHC/TWpaWda3WSQQpm0La8YR+To0Yw2ilqDinTj
 IorMJd9/FYnPpQ8VA+YhG+riQND9a6HAs9Nyo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ri35iDPFNB6jJXy7sK6LG9z2tvNm8n8X6YJdtz56Zf0=;
 b=a025van6enL/YnEGliyfTAXFPESG3z8vFMcNZliTIJ1VNkgTfx3RzYhUqaSLzjYv4B
 JSW4wk/sqI9KiWtX74svFZO1/tpXclWdgH9MNV5Qzu0gv8V1Aaf9WnEecuLO0iGcN6j7
 l/zr+oqt7hu1eVQCaGOlzIEqnbbTm6g2P52m3Rjosm0709TSZiCLCFMo8bY0NW51fohO
 waUUj6+mgKjtC7IN3y6ur0M+ZnuVu6RCW5B91et/G4gffLRvxNB9GZTFwIOpPAkMLK1L
 6nTQ1WZt4dHr1rs62f9ZZCWit9UuSNDBQB7FFzBauFoWYt1YoHv34SEAXOr33ccMOhrd
 fxbQ==
X-Gm-Message-State: APjAAAU4zsTdmmOFQgK7Yd8XnWKCom/XzxbGXwBAzpENiYzyMBVPFerg
 skbiuO8f2ibJm2t87yoLiq+5rgLlOr8=
X-Google-Smtp-Source: APXvYqzC0BveRlRE2ZuWvQ/gnyNCfN5sJlmNPxJaJ2VP6wvaUy7HviBC0aDBuoV0EFwyrSx9BsbUuA==
X-Received: by 2002:a63:931c:: with SMTP id b28mr13760160pge.182.1557302956942; 
 Wed, 08 May 2019 01:09:16 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id j9sm33537133pfc.43.2019.05.08.01.09.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 01:09:16 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH 0/8] rockchip: rk3399: Use spl_board_init in SPL, TPL
Date: Wed,  8 May 2019 13:38:56 +0530
Message-Id: <20190508080904.1567-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_010918_404137_7F23122B 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

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
  rockchip: rk3399: Move u-boot,dm-pre-reloc of uart0, uart2
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
