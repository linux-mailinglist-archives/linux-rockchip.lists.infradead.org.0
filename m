Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3ABC136066
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 19:47:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uFF5RYXeuKqeD0ECn/Ugk60BI7TrxHftsEBPkrriu5g=; b=dUh6DYj5sQ1Owl
	beEu0R1lrq5stFfC0+2zJxN2pf3XLGxyiIKAPyXuTqd5vBPAbvcpNrTeMNSMnGdm0tBV5lCKzWc6Y
	HLCqMrbTEbGc2+rR87lv0DHpQ+TJpjqBAq46L8Sapc5Ji4O/QsOnUNKkP0Zfv38tQzLVuOodH7pg/
	H30ObHZmVwr2rAGuK7KzEw2ZMu6fps8jj7wEw6Q1RIHAdRXcSZHvgZtTYfU6rganIT5Nb82WygCf+
	p7+tMrURnBdiKeK4KhOUlV2dr+TjoOG/Q5WfJhml9o+otQlKH6OzwYD8XMPHUrMzEL1F0Igp/az4i
	6O08lMQ1Qcp3KTdJ5tvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipcqF-0002aR-NJ; Thu, 09 Jan 2020 18:47:35 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipcqD-0002Zs-0x
 for linux-rockchip@lists.infradead.org; Thu, 09 Jan 2020 18:47:34 +0000
Received: by mail-pf1-x444.google.com with SMTP id w62so3769491pfw.8
 for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2020 10:47:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=J5nw/T7/tvYjNhKEcm+ssOCT4uLU87urHfMrixP63LA=;
 b=j2tJbhWV5R7mk7kLRwoZYBj58QH1c+XEQvCbzqzEJ0eOEjoSXp5FazD7Tlos7gFZAa
 9XWQkak6W7Dialfm/jy2K2/9UL6mGPsGlJCZEVBy7/1O3235wqThxmfZ8jxFq6xp6TwP
 mBH54ekIxLSXNjEwN72RiouhA9m2l8GDiiAnA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=J5nw/T7/tvYjNhKEcm+ssOCT4uLU87urHfMrixP63LA=;
 b=rBRK1YK2MyUsEa/3ubeow6NecctCLumLXGIvRyQCzQ4NI4bbYli9lOGpQDUC9j9K4x
 J+ANEgSa+LVUM+DNlSq5ZaBQfUZu9Qs1MTkc3vyTELQ1njZir9mhoYjRnTBKz1TN3BbI
 hd9zPgoIL9vqqCbBiRbwBCj+x9aU4khiz0aRrhONEDeHsxS/O7pv2B762+Njpyl6qENF
 0bYcZ1S7dAv+6ONJNE75I+SOdrIo+BLHeQdi7/yvtL8MlGzP8NHhEykmy16GQN0O+tNs
 29NWaPKKCGjZJ1SSALa8Z4YxJ6BVbfH0i9Nc/PAP8aj8BdW7j14n0fHyk1jkD59+c0XM
 V90w==
X-Gm-Message-State: APjAAAV3EOnxMr3RhtduZsSLZUY0HluTdapKzs33nVrYQ9gFjImnW7d1
 0nRnUfFJ2bnUZ/PylIXGahbRkw==
X-Google-Smtp-Source: APXvYqyK1nCBu5Japo5j9ZjdtFDSbdn4Oa0WcIUwS2UjxF/7S43kOZqYBm85sKzAkhE+gGjwIHNehQ==
X-Received: by 2002:a05:6a00:90:: with SMTP id
 c16mr12388142pfj.230.1578595651786; 
 Thu, 09 Jan 2020 10:47:31 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:c4eb:be5d:1485:edee])
 by smtp.gmail.com with ESMTPSA id i8sm8967306pfa.109.2020.01.09.10.47.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 10:47:31 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v7 0/7] rockchip: Add Binman support
Date: Fri, 10 Jan 2020 00:16:15 +0530
Message-Id: <20200109184622.3098-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_104733_349237_7A86F363 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is v7 set for Binman support in rockchip, [1] here is
previous patchset.

This series add single boot image with binman for arm32 and
pad_cat for arm64 rockchip platforms both TPL + SPL and SPL-alone
targets.

Changes for v7:
- fix rock board
- fix phycore-rk3288 size blow issue
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

[1] https://patchwork.ozlabs.org/cover/1217529/

Any inputs?
Jagan.

Jagan Teki (7):
  Makefile: Add rockchip image type
  Makefile: rockchip: Suffix platform type with tpl name
  Makefile: rockchip: Support SPL-alone mkimage
  arm: dts: rk3036: Add rk3036-u-boot.dtsi
  arm: dts: rk3188: Add rk3188-u-boot.dtsi
  rockchip: Add Single boot image (with binman, pad_cat)
  doc: boards: Add rockchip documentation

 Makefile                                  |  36 +++++-
 arch/arm/Kconfig                          |   1 +
 arch/arm/dts/rk3036-sdk-u-boot.dtsi       |   2 +
 arch/arm/dts/rk3036-u-boot.dtsi           |   6 +
 arch/arm/dts/rk3188-radxarock-u-boot.dtsi |   2 +
 arch/arm/dts/rk3188-u-boot.dtsi           |   6 +
 arch/arm/dts/rk3288-u-boot.dtsi           |   2 +
 arch/arm/dts/rockchip-u-boot.dtsi         |  21 ++++
 configs/phycore-rk3288_defconfig          |   2 -
 doc/board/rockchip/index.rst              |  10 ++
 doc/board/rockchip/rockchip.rst           | 130 ++++++++++++++++++++++
 include/configs/rockchip-common.h         |   3 +
 12 files changed, 214 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm/dts/rk3036-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3188-u-boot.dtsi
 create mode 100644 arch/arm/dts/rockchip-u-boot.dtsi
 create mode 100644 doc/board/rockchip/index.rst
 create mode 100644 doc/board/rockchip/rockchip.rst

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
