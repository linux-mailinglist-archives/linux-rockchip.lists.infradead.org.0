Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A85BD1FF8AB
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 18:08:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S5GKJVCMoYq1NxJIlY6yddZ39g/zOrUc1TOfY/P8j5I=; b=HsyoTBaPFw7amk
	qYSUqvN21bfiaP0DB0Zjt1NyVIPyl3LnmEaAPFMKGAPElk1qaUu1FXvXWHb6hJsjKlaz5+q2lCDUk
	BjLMN/Kv2iWHyohiqf3rCepGR8ZFLaMJBg+jrWLesrKWA39t9Zxzoj38TwjCEq1CdZuN3jcXkK6px
	hD0XII8iXazMNRZvHEjf5SLGT5gTNVpgLzwb8Q9besUWMcWEnEOQrK+gWRSLouFC6VVM1WPuuHrzb
	6u2j5zuqB35rCrNJrJLYpwW/cqmQeRdXG8bhytSerPze0Alz+NPLqZtFHF9IZAzMN+HPmSEmjpgU9
	5pf+re8YC3ftVeRUKxVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlx55-0000Cf-2d; Thu, 18 Jun 2020 16:07:59 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlx51-0000Bh-7j
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 16:07:57 +0000
Received: by mail-pl1-x643.google.com with SMTP id bh7so2605640plb.11
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 09:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FuhZRZJ4Cx1gOdaD51HlkCCxvWnxb19KN8kXk57tUD0=;
 b=ekbInZMK4FEslQX9019wPJffiyAEHPWS0wjfRPpGPgePR8KbTcqRIAWE2DBrdqeML/
 boxJ85nzqx0cATVHA2rsndpKL4oMVIwXfPINIGRykxJnE2p5fqJF6Ra0XYMUC4V8z4Od
 9ZGUAf34Rp2OPEaJcWniz1bPSErRvAO8abpnI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FuhZRZJ4Cx1gOdaD51HlkCCxvWnxb19KN8kXk57tUD0=;
 b=bqKZOWmy/Ms8TjxUUxfVTe3aYJZ8RV6WrhIzNdqIjppqPCOclmQ2ziVVT6lVYVIUp+
 lsZb/lC3e7HvCaR50b7W7/EQTvfXtOwIjQ13nuXfTHybUYJBRNSfTOs4SRPPl6HHZGlh
 mvsAs49ehWRGe2GMKwWvSyVIMnBefDEA5tEgHXeNYd8CwtxR1xCKBEgQQPLmX52WruyM
 mzpDW5ZFRRdv6CwSZTI73kAnjKUnXhus81YU8Ie7YZ57kN0E2kL55ElM+jRcFz5cOWee
 34+VeKHezjtdZ1Pw8qI4dhucvhMYmz/MjUo9ygaf0LBxawfDXc/iX6Jf0Wg8IQ+ypzR3
 m8Iw==
X-Gm-Message-State: AOAM532BpbmVxDfIaKdfckx3JotyZN1thoxOBGWYcqvCjsueaXxulzVl
 R+VyfErB4WXMTLfLv++N+E+RRQ==
X-Google-Smtp-Source: ABdhPJzvrcv/BFtOSjEiH56OouMgMvK9K7hHyBJSfgRISB++6tkerYMCc5NbNhxzbe4ZAzH+hGrf7A==
X-Received: by 2002:a17:902:9301:: with SMTP id
 bc1mr4127638plb.116.1592496474470; 
 Thu, 18 Jun 2020 09:07:54 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
 by smtp.gmail.com with ESMTPSA id u4sm3264943pfl.102.2020.06.18.09.07.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 09:07:53 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH v4 0/5] roc-rk3399-pc: Custom SPL init
Date: Thu, 18 Jun 2020 21:09:43 +0530
Message-Id: <20200618153948.218506-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_090755_697968_8B173D27 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This series supports custom initialization code required for 
roc-rk3399-pc board on SPL stage.

Here is the previous v3 this series[1]. 

Now this series is well mature code handling to add custom 
spl_board_init code parts.

roc-rk3399-pc would require custom leds initialization based 
on user intervention of the power key. This code handles the 
user intervention via SPI environment variable. If someone 
or production systems wants this feature then 'pwr_key' has 
to be set otherwise it is normal like other rk3399 boards 
in Mainline.

Changes for v4:
- enable SPL_BOARD_INIT in all platforms
Changes for v3:
- support leds on SPL
- support env 'pwr_key'

[1] https://patchwork.ozlabs.org/project/uboot/cover/20200608183144.26809-1-jagan@amarulasolutions.com

Any inputs?
Jagan.

Jagan Teki (5):
  rockchip: spl: Add spl_board_init
  rk3399: spl: Print SPL banner after relocation
  roc-rk3399-pc: Move leds setup in SPL
  rockchip: Separate the reset cause from display cpuinfo
  roc-rk3399-pc: Set LED only during POR and pwr_key=y

 arch/arm/Kconfig                              |  1 +
 arch/arm/include/asm/arch-rockchip/cru.h      |  2 +
 arch/arm/mach-rockchip/Kconfig                |  2 -
 arch/arm/mach-rockchip/Makefile               |  5 +-
 arch/arm/mach-rockchip/cpu-info.c             | 20 +++---
 arch/arm/mach-rockchip/rk3188/rk3188.c        |  2 +-
 arch/arm/mach-rockchip/rk3399/rk3399.c        | 57 -----------------
 arch/arm/mach-rockchip/spl.c                  | 11 ++++
 arch/arm/mach-rockchip/tpl.c                  |  7 ---
 board/firefly/firefly-rk3288/firefly-rk3288.c |  2 +-
 board/firefly/roc-pc-rk3399/Makefile          |  4 ++
 board/firefly/roc-pc-rk3399/roc-pc-rk3399.c   | 21 -------
 board/firefly/roc-pc-rk3399/spl.c             | 56 +++++++++++++++++
 board/phytec/phycore_rk3288/phycore-rk3288.c  |  2 +-
 .../puma_rk3399/puma-rk3399.c                 | 61 +++++++++++++++++++
 configs/roc-pc-mezzanine-rk3399_defconfig     |  6 +-
 configs/roc-pc-rk3399_defconfig               |  6 +-
 17 files changed, 162 insertions(+), 103 deletions(-)
 create mode 100644 board/firefly/roc-pc-rk3399/spl.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
