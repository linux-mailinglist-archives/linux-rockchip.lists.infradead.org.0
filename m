Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA80F12CDA5
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 09:28:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DblqmpluuTZqpAUnbHVDRveWjA62bQOirYbRLJQROu4=; b=XkAUSQ650NZly9
	OTxwk33w3dH8pefwo5jW9Bc7ct5WL+BqrJj0+S11g1JdyNicZ6h+7i13rE9Ri5n/0sRRwr2ckAXB+
	SeIPE7dPMGQSVIARfK9z4zqbS1W4HGznQtY4uwG+7CfCs7sE4+IcS7rg9QZoyaaV2h48p2CgLniTY
	8v2Nk8l0G2sGxn5MNjbJVGsSSQWGMEAJ+P6W8br1B/XwtbsMJRYoGg+OILsWfyRyU6YjhV0CMsTk7
	VDBwKEAM0zMMJ42pcI4EyBMhJfbz5he59VEslRlF5pvg/ySMqbqtHjm2UMHq9iD2QuxPiAUC1p2Mo
	LMLBc7zRVTD6PH+Op1bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilqPg-0006IW-RE; Mon, 30 Dec 2019 08:28:32 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilqPd-0006HQ-5i
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 08:28:30 +0000
Received: by mail-pj1-x1044.google.com with SMTP id s7so7812127pjc.0
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Dec 2019 00:28:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=btqYMsOj74q/x7AIGmy3qJ8oIoY5oxMd4QuWb+RSaDA=;
 b=dCgE4UexP2M3m1X4bfgYNZiYtSNcFJYJdf9nu3XTD/aiYIfiSV1xIMdn7ESOb/mmxt
 oLRFlGE5smbp1vzfxLjIlhm9IebTKIUYHyBFuYeLhXX56ANxTGhGtuCyaGB5S0HhNAxx
 cvNtImsqzvEeDhWdwWXH3mCgAvOOCw5vpHpKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=btqYMsOj74q/x7AIGmy3qJ8oIoY5oxMd4QuWb+RSaDA=;
 b=LKyhjRG5JkBkinlI8+5KvNiNrQzTGPGtJUhiqvSYJ7M2JtaivRkZfH85Ewc6d5flxg
 3wNNhZquKV1pDWXZamy76agRXiDlf6RpBpu4R7GhLkiASrywWD9vwa7+ZkCY7TWd4aYt
 EXc6ZFygpuSZmWLGKcjUPhuQD6Jbkt0IFcPzXZ+x3OU5ZYHATXvODSW/x9aCMgSWlLIn
 BJ932284GnSp8fTfrcl4pKyprOS7pAZ1oCleB0k984qcyJRApCAkONVPslROPrQwMX7W
 HIKAYMO+3KRrbuQ2IRazeVzLdWuykW2JtDACyTK+Mh00OfBRbKkGZrqdcNHDFYVsJfNJ
 C5QA==
X-Gm-Message-State: APjAAAVqwytySdoRpoS551Uzt9jteg/okCPA/Tj3O4AEa45ZeYkuB4Ar
 WoewZoLjv91iZKaLIx5MJB3zaw==
X-Google-Smtp-Source: APXvYqwWoYUP2/Z87FrfTDAgbzSWpuYTNzPAhV0Ip0ZYYB8pyBkbpPnQV42w1P+LPwAUkaqZICpydA==
X-Received: by 2002:a17:90a:aa84:: with SMTP id
 l4mr44946125pjq.143.1577694508225; 
 Mon, 30 Dec 2019 00:28:28 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.131])
 by smtp.gmail.com with ESMTPSA id s1sm46240652pgv.87.2019.12.30.00.28.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 00:28:27 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v5 0/7] rockchip: Add Binman support 
Date: Mon, 30 Dec 2019 13:58:12 +0530
Message-Id: <20191230082819.30191-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_002829_359645_90DC1752 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is v5 set for Binman support in rockchip, [1] here is
previous patchset.

This series add single boot image with binman for arm32 and
pad_cat for arm64 rockchip platforms both TPL + SPL and SPL-alone
targets.

Changes for v5:
- collect kever review tag
- drop idbloader.img from clean target
Changes for v4:
- support all rockchip platforms
- add new patches for dtsi changes
- update documentation
- format proper commit message
- rebase on master
Changes for v3:
- rebase on master
- add binman for rk3288, rk3328, rk3368, rk3399
- added rst documentation for rockchip
Changes for v2:
- Add few clean target patches
- update bl31.elf env handling code, with logging
- support puma itb, via BL31 and PMUM0 env
- enable BUILD_TARGET for ROCKCHIP_RK3399

[1] https://patchwork.ozlabs.org/cover/1182449/

Any inputs?
Jagan.

Jagan Teki (7):
  Makefile: Add rockchip image type
  Makefile: rockchip: Suffix platform type with tpl name
  Makefile: rockchip: Support SPL-alone mkimage
  Makefile: rockchip: Use u-boot preferred spl name
  arm: dts: rk3036: Add rk3036-u-boot.dtsi
  rockchip: Add Single boot image (with binman, pad_cat)
  doc: boards: Add rockchip documentation

 Makefile                            |  39 +++++++--
 arch/arm/Kconfig                    |   1 +
 arch/arm/dts/rk3036-sdk-u-boot.dtsi |   2 +
 arch/arm/dts/rk3036-u-boot.dtsi     |   6 ++
 arch/arm/dts/rk3288-u-boot.dtsi     |   2 +
 arch/arm/dts/rockchip-u-boot.dtsi   |  21 +++++
 doc/board/rockchip/index.rst        |  10 +++
 doc/board/rockchip/rockchip.rst     | 128 ++++++++++++++++++++++++++++
 include/configs/rockchip-common.h   |   2 +
 9 files changed, 204 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm/dts/rk3036-u-boot.dtsi
 create mode 100644 arch/arm/dts/rockchip-u-boot.dtsi
 create mode 100644 doc/board/rockchip/index.rst
 create mode 100644 doc/board/rockchip/rockchip.rst

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
