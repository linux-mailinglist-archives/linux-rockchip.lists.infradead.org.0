Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4340E4CB8C
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 12:08:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bs7wuohRFQ2/lvQ2GywvaEU+xiM+N6ZBnXjHlH3F35I=; b=X7qPxgDsaR7tdL
	rXXDNKGPZKwUHI2GUEvPV0LxU0qJAJf7mr0RCZPlf58wHJQIupjl7NNTDC4UYs/u/0ZsQHwZUO0OK
	iFVvJDdRlHru+QbivIQ+1SHRS5DcN+EFBH0SucNmDZJV7grR0wMQXzV5/JIXq2ATypkrz3lvOf6A5
	0o7yRv++kzwOQRyL4A52SniEbV2RlOKhDZnxnudXuWB3CDkGNC4l8gai+dgEYMpmC4UgvMZYDRZwF
	U+XqVm0TodK2KOo62sajHjDYWyqdGUFm6PYklgadp7hij6Gpzp4HY6H7xGrJ0Gd3HK8D65+kluQw4
	CChlKq0jABAfgLQd5kAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtzD-0006EY-7t; Thu, 20 Jun 2019 10:08:07 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtz8-0006D5-Lu
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 10:08:04 +0000
Received: by mail-pf1-x443.google.com with SMTP id 81so1370441pfy.13
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 03:08:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rZvIWwbAz7/BqDkKgdNF1018+J+Q0PcAcnpRSnvg9QM=;
 b=VK1Ej0mS3MQPLbFuXnynw7Adnerp3WxcMrfAYimwc6tuKaminstvbzUopYtmHObZiS
 JxSd1IBrjwu68JClRnW80LPwPYnKEsZFhszS19Ozxil81VWTtT9O919YHUkVVVHWWrxh
 pZ10ZC4KRBIa1o7vvJYp04nJaNBw3F8/TOcYo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rZvIWwbAz7/BqDkKgdNF1018+J+Q0PcAcnpRSnvg9QM=;
 b=PlL48KQTdCDAVLhilN57xpTFJSZuDok18ZFUFH0sH9W/Dua1XxujURWSuTzLhzRXWI
 S0Vn4WY4aSz7rEFBGTcwib1RPVFKCxtPte7AXCQMG9cL1sQTUlgL/BlokZmeaAYM+yjY
 vcnCAafFmIJvscuCxgzIyvQZzJZgDNIq7XbQev8cbTBJqPE5OLi+CzD+OBj3hrKXZqOH
 TiLtHFCrFEcmEYuz8DBu5e37Z8HR7t517WkU0pXmm3l3n3+qyiB/0OH1xvisrfG21xID
 KGY9PJN0EY/ZFKC0R7ELtTRy39PnLrRomrxEuY7EvG6TIulhMXg5izInNlxmb5aV34b9
 cw9w==
X-Gm-Message-State: APjAAAV9YzddKypmIzdJpD7R1eiX194xXKkKOqGxWyvpM1EyLCyI+bXH
 Nr3tg1JYcGxxsSSSzv5ZDQlZ/nDcR9I=
X-Google-Smtp-Source: APXvYqwHbSdPng2LlKJSkLB7GesGiWKwaXEWyOcRYph9iqjrebI4Zr6wXh69PAMBSkkW5C40vODALA==
X-Received: by 2002:a63:f342:: with SMTP id t2mr11432320pgj.83.1561025280082; 
 Thu, 20 Jun 2019 03:08:00 -0700 (PDT)
Received: from localhost.localdomain ([183.82.229.140])
 by smtp.gmail.com with ESMTPSA id x129sm21731387pfb.29.2019.06.20.03.07.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 03:07:59 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de
Subject: [PATCH v4 0/6] rockchip: rk3399: Make u-boot.itb as BUILD_TARGET
Date: Thu, 20 Jun 2019 15:37:34 +0530
Message-Id: <20190620100740.6560-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_030803_252433_EF230E62 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is v4 set for supporting u-boot.itb build target
image for rk3399. here is the previous version changes[1]

Changes for v4:
- rebase on master
- support u-boot.itb build even if bl31.elf available
  in PWD like what is doing right now. this would keep 
  the backward compatible.
- update board README changes
Changes for v3:
- skip binman changes
- rebase on u-boot-rockchip/master

Note:
While creating dummy bl31.elf (neither it available in PWD nor it
as part of BL31 env), the build system is creating u-boot.its without
firmware entry which indeed expected. but the resulting u-boot.itb 
seems booting on rk3399, which I'm not sure - any input would help
on this regard.

Travis-CI:
https://travis-ci.org/openedev/u-boot-amarula/builds/548123247

[1] https://patchwork.ozlabs.org/cover/1096499/

Any inputs?
Jagan.
 
Jagan Teki (6):
  Makefile: clean image.map
  Makefile: clean bl31_*.bin
  travis.yml: Add pyelftools install entry
  rockchip: rk3399: Get bl31.elf via BL31
  board: puma: Get bl31.bin via BL31 and rk3399m0.bin via PMUM0
  Kconfig: Add u-boot.itb BUILD_TARGET for Rockchip

 .travis.yml                                   |  1 +
 Kconfig                                       |  2 +-
 Makefile                                      |  3 +-
 arch/arm/mach-rockchip/make_fit_atf.py        | 20 +++-
 board/theobroma-systems/puma_rk3399/README    |  2 +-
 .../puma_rk3399/fit_spl_atf.its               | 58 ------------
 .../puma_rk3399/fit_spl_atf.sh                | 94 +++++++++++++++++++
 board/vamrs/rock960_rk3399/README             |  1 -
 configs/puma-rk3399_defconfig                 |  2 +-
 doc/README.rockchip                           | 14 ++-
 10 files changed, 124 insertions(+), 73 deletions(-)
 delete mode 100644 board/theobroma-systems/puma_rk3399/fit_spl_atf.its
 create mode 100755 board/theobroma-systems/puma_rk3399/fit_spl_atf.sh

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
