Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 187AA1F1ED8
	for <lists+linux-rockchip@lfdr.de>; Mon,  8 Jun 2020 20:17:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2lHvpPZISxRYQ4U3KUSO+0zti782p0EjFSq9dGGalcE=; b=asHmw68MMNYe3+
	sIXd5rEjgjJp3r3cIDp4A7n8EOxruPtWFZFa13JkmXNhqsITBJnK5HN/o5iSwDMmwMkzFvDwoIhZ5
	BPOEASNsbqXNMT620nIBGjbrSdDi7ThPSIzB74eSR35Lj3yMH3w5D/RHTbnUZa6s4BEszaZPMrU+h
	0QTwUhnLNGAEaccqhxAI9SLQ3CB8vkyhrU9EK2q5ufOfi1buv/xveEGmJ2XaipVQ4AK+PR1x12lcv
	RnEI/TflcV25m6CuDATk8uKMhrzhRKUmIlMVZxHzbbF08FkHC/c1/JDon9sygE1tcG6k9pSa9s5i5
	Kcvh1bMQUUiodrv0QUdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiMKr-0002c4-Fv; Mon, 08 Jun 2020 18:17:25 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiMKn-0002bl-KG
 for linux-rockchip@lists.infradead.org; Mon, 08 Jun 2020 18:17:23 +0000
Received: by mail-pj1-x1043.google.com with SMTP id ne5so172596pjb.5
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2020 11:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w0/oL4Md9qrsApeihcAZt0doJKrIfGYWiQWJ5NonDFg=;
 b=HdG4hf14N0yHP4Y46KKJ0b0z6RM99IQL/WYhiqLJ3mhT2QhbygiQ9TGnZy2VQppbxE
 3VsQLcfnb0x8GEBNfEC/0sJWVXktY8VRSnMI3jSkA02C5r+xRg9TEyPIb51u7qR7G/QM
 hv8RHsFo43kunXAbkl2pQk2nKXC53M5RqCCRo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w0/oL4Md9qrsApeihcAZt0doJKrIfGYWiQWJ5NonDFg=;
 b=M0W4TueOvLqpBoxbbCymPGPavC6cZJy/uDbbMRdkGHB+Q6Gz0q+jpI1/W+25uHrHCG
 Qg3xp3XENhjypOtwDVnSv8Wb6rDlZIfbIwVLzuxOhVJpWOcgclcDw6NZ8zkOH+/rBP+n
 +rop3W9VSRS5o/hzZAfn4biLelA4ZYz/VPlJ2IR7FGpgSbQ7RFyhKo41u6fhd+kLN83x
 1h1riP9VHJ5LHH1lFVpGanX1cVsxZ1E1K7rD2Uyxyzi1IbnOyvTww9Eju/Zv5XCORaOB
 5IB4MlrBNS/QoEIJY/UknR7N9LvNCSkwQcdzml30VL8yAdJoS85vx21oZQt5tmvnjw2p
 bxnQ==
X-Gm-Message-State: AOAM530n64EVBcXQXO/XA6IfpWckp88QtFEN4SH/b9KzgwViO3jgvA+a
 STv+x2SPldfMYxTVjmzmnp0w2w==
X-Google-Smtp-Source: ABdhPJy5ItSpRf+ELzgI8LQLZjkFYYfkbYB1E0v7fP/GvAUp8S5jLRcXZ6B7M9IuGOqgfz8kwtBo8w==
X-Received: by 2002:a17:90a:970c:: with SMTP id
 x12mr540467pjo.15.1591640240827; 
 Mon, 08 Jun 2020 11:17:20 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9043:af95:b7b4:3ade])
 by smtp.gmail.com with ESMTPSA id t7sm180213pju.42.2020.06.08.11.17.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 11:17:20 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH v4 0/4] rockchip: rk3399: Add SPI boot
Date: Mon,  8 Jun 2020 14:17:04 -0400
Message-Id: <20200608181708.17842-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_111722_088583_41B628D4 
X-CRM114-Status: UNSURE (   5.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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

Now, nvme scan seems stable with environment.

This series v4 version for SPI boot support on rk3399.

Changes for v4:
- adjust env offset, size
changes for v3:
- SPI env offset, size changes based on roc-rk3399-pc
Changes for v2:
- same defconfig to support both MMC, SPI boot
- add spi flash program document 

Any inputs?
Jagan.

Jagan Teki (4):
  Makefile: Drop to handle rkspi image type
  roc-rk3399-pc: Mark default env from SPI
  roc-rk3399-pc: Add SPI boot
  doc: rockchip: Document SPI flash program steps

 Makefile                                  | 11 ++--------
 arch/arm/dts/rk3399-roc-pc-u-boot.dtsi    | 12 ++++++++++-
 configs/roc-pc-mezzanine-rk3399_defconfig |  7 +++++-
 configs/roc-pc-rk3399_defconfig           |  7 +++++-
 doc/board/rockchip/rockchip.rst           | 26 ++++++++++++++++++++++-
 include/configs/roc-pc-rk3399.h           |  4 ----
 6 files changed, 50 insertions(+), 17 deletions(-)

-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
