Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59601B5BB
	for <lists+linux-rockchip@lfdr.de>; Sun, 28 Apr 2019 11:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YQm/m0kGxFqopa+YZhiZc0V41a8lprunMcJR5xg9z/w=; b=mBBxNpDDWv7Lxo
	HznEELH2R4El5n9LN7GkBzA8+FO0mtrrcksVUQSdk56rx1zPGHvGGi/bp10ICFITDaEACsuc+uYMk
	bj7d9WhJ/V7LktJoGfSsBW/atMd24kVKItG+e7+rb27O+V3t36MItxENt0tbIAaz86F9guM61mwIu
	8VyniX0/H81sSHz5CA2fs3Is8DLqdFDxua2QoQoa17BvVTtJnII13nWa9j45I/vmyhxusOclkxChZ
	sZg5Orp4lZUg0l4tabRnfprP70m6SZgfcl4VMJSVGq9z15XnhOf+S4yQbOBS0Zb5QxHYuAKO3rrvY
	0451fGmsB7j0Flt10gvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKfoV-0000oP-NV; Sun, 28 Apr 2019 09:09:35 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKfoP-0000n1-Te
 for linux-rockchip@lists.infradead.org; Sun, 28 Apr 2019 09:09:32 +0000
Received: by mail-pg1-x542.google.com with SMTP id 85so3715191pgc.3
 for <linux-rockchip@lists.infradead.org>; Sun, 28 Apr 2019 02:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rUtAG9A1u1/KEgMJUoRzZ0DeHRGOXBTPCcH3s0qyKW4=;
 b=Fjm98ubqgm6A49yovh4IKhmrb1UX9pj8YY1WrDIwu70lzuH5oNhP1grsTuH3mJSOkH
 yf0dZLBGxvLjmecX0UbgEYA4bBeI75dKJfWN+iQJtDEo8HetNlfe7yyfZ2qP87Qz+D66
 suW5QUQqOWywpdXJXb8CXCgRvLTzzj4HjmEpQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rUtAG9A1u1/KEgMJUoRzZ0DeHRGOXBTPCcH3s0qyKW4=;
 b=WkWiRPpyuP737N3Osl4Mc/j9Ewyq0uJXnSNSw3LxyS4tIziLZayiyV9tTvwe/cKJLZ
 r3bQjuPRFR4HwF32D3E1NDM+CbNt0aC+7443qgPFIVi/U0nc9isW2bATVF7IbsBBVBvK
 yIYmz4Rn/n2KIWarOQw3wsh5WhhzrT2Ok6yc1ikzz59BmjUIkXYflwzHb3NlLdJUffuC
 aFmm9bdr7d3jVFVK5JpaPeM6uPB173H0HH0SBJoSBFgjGd1ZEvS9rEsNcbPtJMEn9CYH
 YEpY5E+GEZtTbX7B8dXtQmSW/g3Yd4ky4h3vp0qvFDjFD5/5vs++rblWgs0Hi4snU76p
 tCdw==
X-Gm-Message-State: APjAAAV4a+nz3YK/R8h/5LyFofpUXLjgahg0bXxYWGda4BtIUQrprRoK
 jyJFFQxZ+ysivV+T+p/Oohyi9A==
X-Google-Smtp-Source: APXvYqy+IEHz2atqsQWCMOAHqleCZs7QlO47btH98K5cZ7LNzXg3fCxUNJVWH0ySVzaJIcB7oKlliQ==
X-Received: by 2002:a63:4714:: with SMTP id u20mr44378437pga.316.1556442566042; 
 Sun, 28 Apr 2019 02:09:26 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id k7sm3040338pfk.93.2019.04.28.02.09.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 02:09:25 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 0/9] rk3399: make u-boot-rockchip-with-spl.bin
Date: Sun, 28 Apr 2019 14:39:04 +0530
Message-Id: <20190428090913.10568-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_020931_228133_80C0BE40 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is v2 for previous series[1] to create single bootable image
using binman for rk3399 platform.

This series resolved the travis-ci build issuesi[2] which were listed
in previous series.

Series introduce BL31 env for exporting bl31.elf, If the builds 
are not exporting BL31 env, the make_fit_atf.py explicitly 
create dummy bl31.elf in u-boot root directory.

patch 1, 2: clean targets for bl31_*.bin and image.map

patch 3: travis.yml for pyelftools

patch 4: add BL31 env for bl31.elf

patch 5: add BL31 env for bl31.bin, PMUM0 env for rk3399m0.bin

patch 6: BUILD_TARGET patch

patch 7: create u-boot-spl-rockchip.bin

patch 8: order dtb builds based on SoC type

patch 9: create u-boot-rockchip-with-spl.bin

Changes for v2:
- Add few clean target patches
- update bl31.elf env handling code, with logging
- support puma itb, via BL31 and PMUM0 env
- enable BUILD_TARGET for ROCKCHIP_RK3399
- add patch to build rockchip dtbs based on SoC types
- update binman patch

[1] https://patchwork.ozlabs.org/cover/1091542/
[2] https://travis-ci.org/openedev/u-boot-amarula/builds/525545316

Jagan Teki (9):
  Makefile: clean image.map
  Makefile: clean bl31_*.bin
  travis.yml: Add pyelftools install entry
  rockchip: rk3399: Get bl31.elf via BL31
  board: puma: Get bl31.bin via BL31 and rk3399m0.bin via PMUM0
  Kconfig: Add u-boot.itb BUILD_TARGET for Rockchip
  Makefile.spl: Create u-boot-spl-rockchip.bin for rk3399
  dts: Makefile: Build rockchip dtbs based on SoC types
  rockchip: rk3399: Create single image using BINMAN

 .travis.yml                                   |  1 +
 Kconfig                                       |  2 +-
 Makefile                                      | 16 ++++++-
 arch/arm/dts/Makefile                         | 35 ++++++++++----
 arch/arm/dts/rk3399-ficus-u-boot.dtsi         |  1 +
 arch/arm/dts/rk3399-rock960-u-boot.dtsi       |  1 +
 arch/arm/dts/rk3399-u-boot.dtsi               | 17 +++++++
 arch/arm/mach-rockchip/Kconfig                |  9 ++++
 arch/arm/mach-rockchip/make_fit_atf.py        | 11 ++++-
 .../{fit_spl_atf.its => fit_spl_atf.sh}       | 46 ++++++++++++++++---
 configs/puma-rk3399_defconfig                 |  2 +-
 doc/README.rockchip                           | 23 ++++------
 include/configs/rk3399_common.h               |  2 +
 scripts/Makefile.spl                          | 21 +++++++++
 14 files changed, 153 insertions(+), 34 deletions(-)
 rename board/theobroma-systems/puma_rk3399/{fit_spl_atf.its => fit_spl_atf.sh} (50%)
 mode change 100644 => 100755

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
