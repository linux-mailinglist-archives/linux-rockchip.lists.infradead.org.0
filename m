Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3E8E7852
	for <lists+linux-rockchip@lfdr.de>; Mon, 28 Oct 2019 19:23:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I1vc1TYTK8uONBAnBqncOroGJeiXOGEVEdV2raDNsT4=; b=f6u7FnD2mxdDOb
	RBtST4yIkrsngD91w8sB08o/kHIgFJ4kcXJZqP5Hhshh49yd4QN5ZkXjHTorM2nDTekfFIlaweAZF
	3ZbvmEZQ9AWsaO7LkaaJozYYUqMvm5xr3gdzAW3yHihyYQPvlxTm89RNZ1XmAzxOdKeQRJ+/ao+EE
	qMBGswebx36iV62W4nvb2ygsn5hX2zT/ODtD2SpcyGvx5QStAhkrOE52IkrXWa3gzehr+aOIZ1QDV
	8jegvYDQEPRL2IvIe0cNEP49yHI+k/MyMaZ5EDpMujWRG4rBdtFFmiUS70U+B3kG6Cs346xnaMgOG
	ZaAV38E7BBF0vNmp+Neg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP9fj-0001Qh-PK; Mon, 28 Oct 2019 18:23:19 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP9ff-0001Pa-PB
 for linux-rockchip@lists.infradead.org; Mon, 28 Oct 2019 18:23:17 +0000
Received: by mail-qt1-x844.google.com with SMTP id x14so5687198qtq.3
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Oct 2019 11:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jOWlJJy6ChuEnqYHbSHVhhLc41FzhhIbgNvL4gteWmI=;
 b=l8qmOSK8YchiVh2uO5YBeCgBvBOdUPYnJFFf0qevg1oXdh17RzVfSZ872bS9hseUkQ
 IBW+IuI5W93nmKGGhxC7bwVX+yEuxGWMJ30t4uYZBeKlvSs96PIldYUBc1mpi5jlRAnR
 Lc8PrZd3xvcY9SCTpQRLYSuAsww0vkQJGs5Ap6ND9oYyMKcSqqVWNh2vVFaLTE+F0bDC
 vfQ2EUZMIwLzUhAVlC2mV7d5OpWuSNuwUOYF6sV5/edl11sHTEhmjK8i1cOl/rSotYSZ
 bPKSAqikVeGkZNlfengbP0a4vgfGpW5noxhaCS4YnRDOiWnuqb0lK4ZiKlw9dnhr/jzI
 1mDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jOWlJJy6ChuEnqYHbSHVhhLc41FzhhIbgNvL4gteWmI=;
 b=D5SfusvAOvr4s6blwrW8mB+syezqpmnpRL79VAuEDeqrF0/3VwSqO5ujcqKHJuVOWL
 Yb7VKLL9uwcQbthqbWOd09vvrR2RTED7xSTpB43pQnhby9spoPEGJ0/Xz0UkWLfk1BBj
 chccDtwIO/7vcWc4uDKE8Jcxl/d4mGr2/UdAxrwWeqP+YRCueSaUidIf6v4eThh08fxE
 SFQ0e+2rKiaMLlu+a8lGfMLbt/+Dej5A/hLHGl2KIOnfEduoGf9fb68JvdzxclSxVV8C
 DAE2FtOW6m2q7/Gmbp9VE9ZtF5pRxpYszROCsN/umsALHK+LF0hNN9iZ4VFTrJ0cx6qO
 vh2g==
X-Gm-Message-State: APjAAAXLGR0Exf7rqoO5p5puaTQUu07APeQHQGAPKj4okCiQFWR2TCrF
 JIvEUmXRQM2hz2/WUMkQ0cE=
X-Google-Smtp-Source: APXvYqzi7aq5Ujye1dzsDxTmyAsUXCY6WWoNzCH9hvO3gsTVvZOy7RJRh/HUOjF4kGBm9w2TjIykbg==
X-Received: by 2002:a0c:94fb:: with SMTP id k56mr13660455qvk.127.1572286991587; 
 Mon, 28 Oct 2019 11:23:11 -0700 (PDT)
Received: from firefly.sparksnet ([2601:153:900:a52:6f12:874c:d2b2:a9d0])
 by smtp.gmail.com with ESMTPSA id x9sm5808631qkl.75.2019.10.28.11.23.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 11:23:09 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 0/5] add rk3328 usb3 phy driver
Date: Mon, 28 Oct 2019 18:22:49 +0000
Message-Id: <20191028182254.30739-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_112315_945894_7DB10C0F 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
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
Cc: katsuhiro@katsuster.net, linux-rockchip@lists.infradead.org,
 linux-usb@vger.kernel.org, robin.murphy@arm.com,
 Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

It took a lot more effort than originally anticipated, but here it is.
This is the driver from [0], updated to work with the current kernel.
I've tested it on the rk3328-roc-cc board, both usb 2.0 and usb 3.0 
devices detect on hotplug.

[0] https://github.com/FireflyTeam/kernel/commits/roc-rk3328-cc/drivers/phy/rockchip/phy-rockchip-inno-usb3.c

Peter Geis (5):
  phy: rockchip: add inno-usb3 phy driver
  dt-bindings: clean up rockchip grf binding document
  Documentation: bindings: add dt documentation for rockchip usb3 phy
  arm64: dts: rockchip: add usb3 to rk3328 devicetree
  arm64: dts: rockchip: enable usb3 on rk3328-roc-cc

 .../bindings/phy/phy-rockchip-inno-usb3.yaml  |  157 +++
 .../devicetree/bindings/soc/rockchip/grf.txt  |    8 +-
 .../devicetree/bindings/usb/rockchip,dwc3.txt |    9 +-
 .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts |   21 +
 arch/arm64/boot/dts/rockchip/rk3328.dtsi      |   72 ++
 drivers/phy/rockchip/Kconfig                  |    9 +
 drivers/phy/rockchip/Makefile                 |    1 +
 drivers/phy/rockchip/phy-rockchip-inno-usb3.c | 1107 +++++++++++++++++
 8 files changed, 1378 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb3.yaml
 create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-usb3.c

-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
