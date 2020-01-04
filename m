Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9544130171
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 Jan 2020 09:38:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yt88k6VKItaLkKvKzGv9Afiw2m3PbA4NoX17e7ajxLU=; b=it35P69X4Dy7N5
	5NQn5n70yalb5Y0ISrxVTUJ/9aI61BOVFbaUrYqdVDChSd/pktsFAp5RFa8kxLbZtBVaTmJmJUsGJ
	0bqg2g7EznzkC1HPP6Tby1GLH1tCdTA1CMi4eyCSheSxThx0BTyp+Nw/4DctvGv9a9D8/+xncKMzj
	Z2B9VHd5hhNOsC9dgP5Np2MC/23Huzl0uHm8YNcZ2jX7CKWkQftCJtOyYKG8yBkjOT4y8LGfUq+05
	wcCMiDw93ts+yI1SE841/CWAacJ1yA3JLXReYHMndl/Y7MHKq0e552zTjyiJTQKG6M9bVp4y1sayU
	s1hznVotUifpOsSsm6Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inewy-00037B-5l; Sat, 04 Jan 2020 08:38:24 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inewt-00035t-Lv
 for linux-rockchip@lists.infradead.org; Sat, 04 Jan 2020 08:38:21 +0000
Received: by mail-pg1-x544.google.com with SMTP id b9so24455836pgk.12
 for <linux-rockchip@lists.infradead.org>; Sat, 04 Jan 2020 00:38:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xEBrsWUQtuerJ+y7ZBAe3tgVNuRJ0vPppcHoi7n1s18=;
 b=mqYzb1pehwGEHC69Pr90zhdKCcBBxUyMm5NHEeY1GJTUjMDL2O1jk0dWfBz9YyK/bj
 aEmxTRA/L1GlS8guW8hsPsgMoJJR85psKPB4jKGP9CxzzAf0sew5zk1IfgENhhC/qolM
 P3jkYq7D3S9HIJSRgdeT11YAEuYcr4t2r640c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xEBrsWUQtuerJ+y7ZBAe3tgVNuRJ0vPppcHoi7n1s18=;
 b=Ex2RG260im/+kvBFSa8Uqs95cOoFVJ1WyZThBnN0eT9i3o48DGZlsVamWU4vIUMKD8
 s7ybtdpLdQZoANNbCQgLOb2DcTZMzs7KlwC8D79ejI++GUREir4LTgt1AxGubpYrJz0z
 Aj5mQVsLvMzZWIfkccF9ZrJjeFCc/yBV+w8MTQ6vA+Puv/rgfkyQAOrakNf9xEOC52m4
 Pl5q0/kj1Fhnjh0AanB/99Mm00bLeCCeSKeW1h4hxEQYI0PEkAEbkmyhaF+wWIGJBnVH
 EuM5Jl0qHOpvko50vzO8MToXwTQlBQIOuxTJD1Jn1+p67F4yr9FnfO1wXYVJgVCIdZuw
 1nTw==
X-Gm-Message-State: APjAAAVSoswS93gBzHn3rNKF9SdGDpWEznSQuP5XtS1n+GIvZUyt21y0
 b406h4Q9ocacgtkM17hv5shGMw==
X-Google-Smtp-Source: APXvYqwZMUvHoWZGl0zjNDx1MP3FrdHGvnyqILFd3XP6WT8GtTzQcqSinjMqPq29osWzP85f1c+l6A==
X-Received: by 2002:a63:ff52:: with SMTP id
 s18mr101998432pgk.253.1578127099011; 
 Sat, 04 Jan 2020 00:38:19 -0800 (PST)
Received: from localhost.localdomain ([49.206.201.128])
 by smtp.gmail.com with ESMTPSA id z4sm70201623pfn.42.2020.01.04.00.38.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 00:38:18 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v6 0/6] rockchip: Add Binman support 
Date: Sat,  4 Jan 2020 14:08:00 +0530
Message-Id: <20200104083806.3930-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_003819_854419_446642D8 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-amarula@amarulasolutions.com,
 Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is v6 set for Binman support in rockchip, [1] here is
previous patchset.

This series add single boot image with binman for arm32 and
pad_cat for arm64 rockchip platforms both TPL + SPL and SPL-alone
targets.

Changes for v6:
- drop idbloader.img filename change patch
- update rockchip.rst to include, rockchip TPL, SPI boot as TODO
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

[1] https://patchwork.ozlabs.org/cover/1216263/

Any inputs?
Jagan.

Jagan Teki (6):
  Makefile: Add rockchip image type
  Makefile: rockchip: Suffix platform type with tpl name
  Makefile: rockchip: Support SPL-alone mkimage
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
 doc/board/rockchip/rockchip.rst     | 130 ++++++++++++++++++++++++++++
 include/configs/rockchip-common.h   |   3 +
 9 files changed, 206 insertions(+), 5 deletions(-)
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
