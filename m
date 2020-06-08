Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC4B1F1F07
	for <lists+linux-rockchip@lfdr.de>; Mon,  8 Jun 2020 20:32:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/nH02CVv8DYloISY6SfzTHep3rSrmkvpVvc39qEPUBk=; b=W9N57t6xIQMbWB
	KrXJ+MGUGW7x5z3Dkii5+Zw+K04400puUgFGw0pcCctzC0tJMVQgeqv/WR5PMkz5eQrdGHVI065Zx
	y+LdxQnCTgLftPnEO5JFuBphigYseljt7tpJUqF6sjCab54IpMlgZjGqInPyMqHaxa0zs/3NTtAXm
	GIkepitfQC2ksgaR1AucUYrtzwb6z/JafhOOdI4bPh/Q8A/oqRbugH91Zd2gULq/2HatY+BJoZJ2v
	INHEwKwxOZ1GV9xf+L5QOxJRKSM15eqSpSscRYWRP92Bq1tnQB5L9s9JBBqVwPDCPmOATJLe+o6/r
	DlpgGw2+mwP/d1EcdxVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiMYy-00037V-42; Mon, 08 Jun 2020 18:32:00 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiMYu-000371-M2
 for linux-rockchip@lists.infradead.org; Mon, 08 Jun 2020 18:31:58 +0000
Received: by mail-pl1-x641.google.com with SMTP id d8so3806768plo.12
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2020 11:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l3xJDyyoDYrvrez7cy/2VVQYiSOcKcmSKEhJ/nYbfnM=;
 b=BRMiA+sRI2VKdH1fqHjtW55k8ieXnJSyInBsAiX6fQX12r7vbRgC9A+IornNwF+cSe
 AF7dd9BUNvqIwZu4hBeB/SnaR1HtOXQ4LGkBjDNMJ6H0Bs4jeAxi8bOeHqNXUYA0wBUj
 oqlBcpfpuBTRW89hhASKJ672A+QpWyx/TB+Bo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l3xJDyyoDYrvrez7cy/2VVQYiSOcKcmSKEhJ/nYbfnM=;
 b=KjD+SpEuVC8NpfpZ77KWQUyUUurnd9P/ijqfzh8r8ZCaNCGJlHcDR4aSXyJeqC7Sy0
 qBQ+9M9IHVypdBEwCwxS09YUz2jK0SgAq/GOseQWXmtS6ul1ytkgfhT1+YexTTgkztTI
 gme7l50celQdzVpIYCqsXz1ZXD0TUmWyazMImlLUGomyZKa81nNp1rNO+jC2RZq8/Gxu
 SMzhheUWT7CmDglPpzGiDvX5sRDbDlZyuw85UdOevWF8wXnRDeNK4N6EJCaK23cPT5xq
 grkxNCAuYmJRJoF29m0lI5bsDwa6StrWSN/RErDpeL0ilKUzmZlZsJtsbf2vkvECELwE
 Y5zQ==
X-Gm-Message-State: AOAM533oL4/uIRfXWsrVyOaQQ/Dqf6cjPHVRWoDSZoiSq6u1GfZLi0mF
 U/Ksj0KeIqBIsoygzfhQd6T6Mw==
X-Google-Smtp-Source: ABdhPJxbPlYu6sL9zuvgRyKsEmPk6nBnoO0xEmxRii6GLseWis62CwsZA2cbejiOywreKUj4yytkvg==
X-Received: by 2002:a17:902:7b92:: with SMTP id
 w18mr90156pll.273.1591641115053; 
 Mon, 08 Jun 2020 11:31:55 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9043:af95:b7b4:3ade])
 by smtp.gmail.com with ESMTPSA id k29sm6680961pgf.77.2020.06.08.11.31.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 11:31:54 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH v3 0/5] roc-rk3399-pc: Custom SPL init
Date: Mon,  8 Jun 2020 14:31:39 -0400
Message-Id: <20200608183144.26809-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_113157_178665_B4298CED 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This series supports custom initialization code required for 
roc-rk3399-pc board on SPL stage. I have marked it as v3, since 
we have tried this before on this series[1]. 

Now this series is well mature code handling to add custom 
spl_board_init code parts.

roc-rk3399-pc would require custom leds initialization based 
on user intervention of the power key. This code handles the 
user intervention via SPI environment variable. If someone 
or production systems wants this feature then 'pwr_key' has 
to be set otherwise it is normal like other rk3399 boards 
in Mainline.

Changes for v3:
- support leds on SPL
- support env 'pwr_key'

[1] https://patchwork.ozlabs.org/project/uboot/patch/20200319101251.7354-1-jagan@amarulasolutions.com/

Any inputs?
Jagan.

Jagan Teki (5):
  rk3399: spl: Add rk_spl_board_init as __weak
  rk3399: spl: Print SPL banner after relocation
  roc-rk3399-pc: Move leds setup in SPL
  rockchip: Separate the reset cause from display cpuinfo
  roc-rk3399-pc: Set LED only during POR and pwr_key=y

 arch/arm/include/asm/arch-rockchip/cru.h    |  2 +
 arch/arm/mach-rockchip/Makefile             |  5 +-
 arch/arm/mach-rockchip/cpu-info.c           | 20 +++++---
 arch/arm/mach-rockchip/rk3399/rk3399.c      | 11 +++-
 arch/arm/mach-rockchip/spl.c                |  1 -
 arch/arm/mach-rockchip/tpl.c                |  7 ---
 board/firefly/roc-pc-rk3399/Makefile        |  4 ++
 board/firefly/roc-pc-rk3399/roc-pc-rk3399.c | 21 --------
 board/firefly/roc-pc-rk3399/spl.c           | 56 +++++++++++++++++++++
 configs/roc-pc-mezzanine-rk3399_defconfig   |  6 ++-
 configs/roc-pc-rk3399_defconfig             |  6 ++-
 11 files changed, 96 insertions(+), 43 deletions(-)
 create mode 100644 board/firefly/roc-pc-rk3399/spl.c

-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
