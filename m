Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B01DB6D5
	for <lists+linux-rockchip@lfdr.de>; Thu, 17 Oct 2019 21:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/5rhuHkeoNlGsCVa4wyhwdQTex+WKk5ra2M9wX3xKFk=; b=W9CmCb2h5qcTPQ
	L9SCrkgmVSDnvnWLZ5gWjK5CwU6eT5hvSxyG3emF0wYbafwMJouUXSN+8nyZsGApMvqYPidUgPK3o
	v9NaClGDEjeO0ya8mfgcp2X7lxuG956bosM04Kl/iAoEREjsR3ldd6l69rQ5LpEaUIAPQ8NLCqWAE
	Ypr4lsEmN8u5stRMzoQP9MJSd8Lfuk7LtGV33mx3iVtDOyIzRWBPv3nOgTltILWCEGHZZCSCwanUb
	Nh1Es+jA0FBM/OJaarYUYVNtBPuzIJzS5629N75k1J/24Oj1alZQ7NTbCvSMVbXG4yjXFhCWzo0Xk
	GDJBA4gqwbqCI0MPvunw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLB7o-000176-LS; Thu, 17 Oct 2019 19:07:52 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLB7k-00016P-KO
 for linux-rockchip@lists.infradead.org; Thu, 17 Oct 2019 19:07:50 +0000
Received: by mail-pl1-x633.google.com with SMTP id d22so1578710pll.7
 for <linux-rockchip@lists.infradead.org>; Thu, 17 Oct 2019 12:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YYOT0Cj5RPzcQsEkAPTt/yzkdGAp291dV6sugDJ1YRY=;
 b=rs+SJXveejypSio6x7NlTvCLjVyxdtBgEv9TwOBdvRKGucp7oyWCBBkqryfwdu4aKo
 7Gmqm2ThKwBfqyc9YDM1KamZiqP8+GDgcWvdOezNqUd+QhQY81yT9Wkn9jaLnX1O5Qkq
 ONWM7EUlcvUyvVlVrucoQ8tF13H2sfrxFmtho=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YYOT0Cj5RPzcQsEkAPTt/yzkdGAp291dV6sugDJ1YRY=;
 b=NwFjEgiVssMMxsdB8++AwXCnvpQwsm0S+MBQrRrKii1ecA/00T6XntvfQP/bEN0j1l
 7ZeMVfU8wjoBLEEachEn4fcff+TsZX+41D03IMUlAwC/aqvBNrHCsYUpD/wJlZqIUedg
 tBrQOQscFciV1f6B2uiCWqMVcoB6G8/rYBPAB7ruLlqqbn5ak1uDpvZXMoq9snbTq6PY
 pQOeq+yfm7lCKHkkMPeUuq5hf3HfR1uoRuS9KMUiMh2FetpUFRhk1+7cNjNDdbc5uQMF
 Zd+sPmNM0Kf4qSFEiec+mLbA4ha7eagYGDO7LT1hVFgKrBm5VZlxOkrlIJBtIDs3mEqC
 mqxQ==
X-Gm-Message-State: APjAAAVz9PSwSTjf15cpiATYibmCJsRXAjpf5iS23OtheH45yikIxJqb
 i8jrdOr/Eq7bTQuhOxtL0Q6QicBQViI=
X-Google-Smtp-Source: APXvYqzKpgeD1rU03oN2G/venQHgrA1Zcgg081V6dxZA+5DKVbFNPiRiczaOFh/Ty38V408O/tTLtA==
X-Received: by 2002:a17:902:7885:: with SMTP id
 q5mr5391880pll.317.1571339267376; 
 Thu, 17 Oct 2019 12:07:47 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id y28sm4422736pfq.48.2019.10.17.12.07.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 12:07:46 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v3 0/5] rockchip: Add Binman support
Date: Fri, 18 Oct 2019 00:37:05 +0530
Message-Id: <20191017190710.29985-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_120749_273412_4BEF756E 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:633 listed in]
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
Cc: u-boot@lists.denx.de, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is v3 set for Binman support in rockchip, [1] here is
previous patchset.

This series add binman support for TPL-based targets, 
binman for SPL-alone boards add in future.

Changes for v3:
- rebase on master
- add binman for rk3288, rk3328, rk3368, rk3399
- added rst documentation for rockchip
Changes for v2:
- Add few clean target patches
- update bl31.elf env handling code, with logging
- support puma itb, via BL31 and PMUM0 env
- enable BUILD_TARGET for ROCKCHIP_RK3399
- add patch to build rockchip dtbs based on SoC types
- update binman patch

[1] http://patchwork.ozlabs.org/cover/1092198/

Any inputs?
Jagan.

Jagan Teki (5):
  Makefile: Add rockchip image type
  Makefile: Rename idbloader.img with u-boot-spl-rockchip.bin
  arm: dts: rk3368: Add rk3368-u-boot.dtsi
  rockchip: Add Binman support
  doc: boards: Add rockchip documentation

 Makefile                                |  23 ++++-
 arch/arm/Kconfig                        |   1 +
 arch/arm/dts/rk3288-u-boot.dtsi         |   2 +
 arch/arm/dts/rk3328-u-boot.dtsi         |   2 +
 arch/arm/dts/rk3368-geekbox-u-boot.dtsi |   2 +
 arch/arm/dts/rk3368-lion-u-boot.dtsi    |   2 +
 arch/arm/dts/rk3368-px5-evb-u-boot.dtsi |   3 +
 arch/arm/dts/rk3368-sheep-u-boot.dtsi   |   2 +
 arch/arm/dts/rk3368-u-boot.dtsi         |   6 ++
 arch/arm/dts/rk3399-u-boot.dtsi         |   2 +
 arch/arm/dts/rockchip-u-boot.dtsi       |  21 ++++
 doc/board/rockchip/index.rst            |  10 ++
 doc/board/rockchip/rockchip.rst         | 125 ++++++++++++++++++++++++
 include/configs/rockchip-common.h       |   2 +
 14 files changed, 200 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/dts/rk3368-u-boot.dtsi
 create mode 100644 arch/arm/dts/rockchip-u-boot.dtsi
 create mode 100644 doc/board/rockchip/index.rst
 create mode 100644 doc/board/rockchip/rockchip.rst

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
