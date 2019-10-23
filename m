Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A72E237F
	for <lists+linux-rockchip@lfdr.de>; Wed, 23 Oct 2019 21:57:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UIXGHupp/Q2N4kxFiaQpZ3i8dDkfdPUNGfA/K5ubjZ8=; b=icB+DMbJgqGFSK
	EBlzNU6In+KQlPtTIVzOb980vm4xFW+GHNMqT5sbJ5SoTwML4NMSvlUGu5vMrg1koHe4ExmP/vvtq
	B/jB6H5pTUX6Xsvi+vLQWwpgStwm9szoPayBYytXwrktnjQEzUylXejdoWlUlXYRodCNcZturFd3O
	51lUNIH+HRqUV2Q2ys+Y83B4eSN6g1htfBD/cpWElOo0CSbN1OmwlsAgtJp+0er8LbdMNZNLJU+0D
	CXTutsyc9Of6R4CFFG4FsQyZYPcagpjtntiIBgZRABCtRXI/XoPTj38ImZnlHO76lYN3Wj51ozDc/
	EcrI2RskECxdjUtXfZIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMko-00050D-QN; Wed, 23 Oct 2019 19:57:10 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMkl-0004zr-SJ
 for linux-rockchip@lists.infradead.org; Wed, 23 Oct 2019 19:57:09 +0000
Received: by mail-pl1-x642.google.com with SMTP id t10so10600670plr.8
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Oct 2019 12:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bwx/BPE1ZWY/Eu8bsebz6he1nkcDVV2TF0dcLsHDCzE=;
 b=UeYyPburfCiwH9tatbqhbnmjpJtXe2RCBopGDvpTh80KMtOxdbEvP0PxUA5EBO/XS5
 EfsCijX9IBQYg4D9UN7vFmqPw5l+2y7beNRrN3g5tA3LLgVZYEf877kkamebZ2o9DQwm
 2hGUM7k2X8q2Prp0Shl42iIMxdVQVziwFIBnI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bwx/BPE1ZWY/Eu8bsebz6he1nkcDVV2TF0dcLsHDCzE=;
 b=Zpt28zoYgD317fkcZ+7fEv00YqV4jAXdVCMYNedJsgNHfZu0dqMCkUHkMjZZJbfDWZ
 auTF4DXdqj3Whi/X1VaM471shJhEdytXC75UUIE0ttZyEEGw7Tj957HLZBMVKG9Kmmgn
 +TkULzl6VF3etJUBFo6OpbHcBaeweMDOXnwLWIjAXBvZL2kbHvjTp6Ay2dI10921xa8K
 ztKINKj16tUWqr0C5iBbEzbZNyyckfdylhXClA58P4mOl1+9BVTTBffQhvnsmvkhCsQC
 AgO0nsO2lrR+9f7SVqQtVUrV8Nf3GHUuBDFFPksXYa7OQg04F+gjbZOlTce6khfrF4Mk
 sRJg==
X-Gm-Message-State: APjAAAXqgPyyF9CVNjFTjrWqNTiFVYvUcSOE0BtKTwhIv1bRffT3T/tP
 9D55YqFVs45VXK7RNg+KqeSjnA==
X-Google-Smtp-Source: APXvYqygSTDrBwjsTsb+rUBmOf8QFIt9smBBGsEoWD2wjtH1kOuPOjtWMhVbg045NGHvsTzg0LYaag==
X-Received: by 2002:a17:902:43:: with SMTP id
 61mr11646459pla.308.1571860626112; 
 Wed, 23 Oct 2019 12:57:06 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id o185sm31499280pfg.136.2019.10.23.12.57.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 12:57:05 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v4 0/7] rockchip: Add Binman support
Date: Thu, 24 Oct 2019 01:26:45 +0530
Message-Id: <20191023195652.7158-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_125708_068974_21C2AF21 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is v4 set for Binman support in rockchip, [1] here is
previous patchset.

This series add single boot image with binman for arm32 and
pad_cat for arm64 rockchip platforms both TPL + SPL and SPL-alone
targets.

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
- add patch to build rockchip dtbs based on SoC types

[1] https://patchwork.ozlabs.org/cover/1178957/

Jagan Teki (7):
  Makefile: Add rockchip image type
  Makefile: rockchip: Suffix platform type with tpl name
  Makefile: rockchip: Support SPL-alone mkimage
  Makefile: rockchip: Use u-boot preferred spl name
  arm: dts: rk3036: Add rk3036-u-boot.dtsi
  rockchip: Add Single boot image (with binman, pad_cat)
  doc: boards: Add rockchip documentation

 Makefile                            |  36 ++++++--
 arch/arm/Kconfig                    |   1 +
 arch/arm/dts/rk3036-sdk-u-boot.dtsi |   2 +
 arch/arm/dts/rk3036-u-boot.dtsi     |   6 ++
 arch/arm/dts/rk3288-u-boot.dtsi     |   2 +
 arch/arm/dts/rockchip-u-boot.dtsi   |  21 +++++
 doc/board/rockchip/index.rst        |  10 +++
 doc/board/rockchip/rockchip.rst     | 128 ++++++++++++++++++++++++++++
 include/configs/rockchip-common.h   |   2 +
 9 files changed, 203 insertions(+), 5 deletions(-)
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
