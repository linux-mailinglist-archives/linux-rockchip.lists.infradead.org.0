Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7AB1139B9
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Dec 2019 03:19:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v9w3utf8nnoW3vNmNBh0hhgOkWKNa9mFSYpMu6BRrt4=; b=Hjo4aB3c2pqXzo
	ah8+fGP6TK+1z5sHxERiJ6nIcI9TUif/52D+jR6SfEOeBTkvp5QHJ7tC4sGAq8IDfAUHrj0i8D6sP
	goofWtW9Xt/GSTdVfmxDLL79Tlo0HQT7Q/SBbASMUb/NMThtBkfbvA727tQEQwdnb+sIbgE54gz9z
	OkzkuieLvv1Ny3xb8BBQzIodMHtmGx98GtXYRZx4NYW4ciussI4UJyVS+Ro9ykbT6r32vPy6UQKoa
	VcU6zmUj95xhuAQ5sPksqpQC5wYI5H7Kt3afS+yAphDOB6Nq1t7sEIlDdTonfXe64gx830HAt5mAz
	0RQnhpIdjoZlx2/vkPlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icgje-0007xX-Rc; Thu, 05 Dec 2019 02:19:18 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icgjb-0007x0-8M
 for linux-rockchip@lists.infradead.org; Thu, 05 Dec 2019 02:19:16 +0000
Received: by mail-qt1-x836.google.com with SMTP id b5so1953666qtt.11
 for <linux-rockchip@lists.infradead.org>; Wed, 04 Dec 2019 18:19:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=K5bOX7sd5sca4fthU2fQI9UseNw4Qy4m7Dkb0D0edjI=;
 b=M7VmJLkpbDSwW4QHZqXCIE/AknX9ht5aDukciIPehit3I7c92Tbm7MLTcLKIRV+i2c
 lgqIu1SbqB0kSqN3onuYd6Y0ZPJuCcXNOqAMaoJKHRv1ancpfjuyqRuv63TYs0se1i4m
 c1pxmxRgh+AGHwmcf36hkQkgCbZNBZ4Pbqxe7dK0u2j1ZLyOxmuTGqIk1D4qdS+/B//k
 umU91/KWn+d9c3GNroAEZvE108S0GBSexoBdgf2zGUCghmPVkj8Mhngm8NRE7l19PjSd
 GX+JK3mUSv65xEGEQ0GfeFCZqomPrmksMCYzoWjIaCOlI0t8Q1P9jRlGt5paFlXfeIYB
 ohxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=K5bOX7sd5sca4fthU2fQI9UseNw4Qy4m7Dkb0D0edjI=;
 b=m39a099NTx6ARvb7kT4S24bPRl9FI67sbt4KqZ41Du0ynPYcbXMLhP2M4S8t9wwsHN
 ApvO9u0LBb7Bj7QHDO5I+39XoZmvla+yDZZyPbRxgt1WpyYsPzE7XHQ7sh40EDCvjqT1
 h7Oo8N9NWDZHAX0ZTyWCvtM7VreK6cm/9E7J9sgHSZWArThKT3MkJMxsb/hKULXMPxUp
 f1vvC0UU8eXXwC8Xz/Fz7D2C+wvU1XLgb31lpptfa18FxjwfBnZfoJq+naNwkTK0X7b4
 DCQOTqgeZqnekc0TrCMtAbErE5xdmt4fkLYV8+Udb9dtB38JT9j39lyamWTrQZMbsHi+
 mVyA==
X-Gm-Message-State: APjAAAWP3uOuY3Kl3yoY2PcZM3akwZ7mzi+xTgGlASCZi5mrXAmclJWg
 IvGKPadNIdC93IfXqhUIDeouNw8q6ziGQ7HLF1dZMSaJTcf7ng==
X-Google-Smtp-Source: APXvYqzQmsb7PQo2ir0kmUjDOnaTpl/D9xialMW9j+Q28oNIZpk4RftdtUMSvR0B0AWIzIFoW4DrXz2SZa/X+rq1IYo=
X-Received: by 2002:ac8:75d8:: with SMTP id z24mr5558000qtq.193.1575512352841; 
 Wed, 04 Dec 2019 18:19:12 -0800 (PST)
MIME-Version: 1.0
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 4 Dec 2019 21:19:02 -0500
Message-ID: <CAMdYzYpbhAT5EfJv2SuC8GZE3q3juUXCwtbAX8SW9eXiC5AP2g@mail.gmail.com>
Subject: rk3328-firefly ddr4 tpl init
To: u-boot@lists.denx.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_181915_344753_02AAAEA2 
X-CRM114-Status: UNSURE (   3.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:836 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Good Evening,

I am trying to get TPL/SPL working on the rk3328-firefly ddr4 4gb board.
I've pulled the ddr4 dtsi from the rockchip u-boot repository [0].

Unfortunately I cannot get the ddr4 to detect correctly.

With the u-boot tpl, I get the following:
U-Boot TPL 2020.01-rc3-00072-g1a1bea82b2-dirty (Dec 04 2019 - 08:33:54)
data training error
row errordata training error
DDR4, 333MHz
BW=16 Col=10 Bk=4 BG=2 CS0 Row=17 CS=1 Die BW=16 Size=2048MB

With the rk3328_ddr_333MHz_v1.16.bin, I get the following:
DDR version 1.16 20190528
ID:0x805 N
In
DDR4
333MHz
Bus Width=32 Col=10 Bank=4 Bank Group=2 Row=16/16 CS=2 Die
Bus-Width=16 Size=4096MB
ddrconfig:19
OUT

[0] https://github.com/rockchip-linux/u-boot/blob/next-dev/arch/arm/dts/rk3328-sdram-ddr4-666.dtsi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
