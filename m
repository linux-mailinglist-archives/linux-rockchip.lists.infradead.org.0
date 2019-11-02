Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47ED3ECD23
	for <lists+linux-rockchip@lfdr.de>; Sat,  2 Nov 2019 05:49:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Guk/Kmfv5boX7nGbIvvcP8NRcq73DRpe44d2s0MsnQI=; b=KKUMjp1gdPi9gA
	mKJpurSPKmmjctcDjsmmOBJlOEX33usNPKtL7NlCkDX5rhSH6Lz/NIU/lZzzPcj+hDXPqHdkj7mzI
	mCNy6Ai8s8uMxQNQvk8zrPJsxpdtDVvWGu1Hry0Q4cgG6N0tRijY45LH9yzU1Zm8a5eMQ6ojw9M5j
	dYRq0UdrAsjmdNUiThwxjUBHV1nuTy8FMR/DVUSh0vQkpN2i59cBzWiqWUaizT0YiufIiUyJN0PVg
	0l8CVNu22hJp9utQH+93bWOglfUnjhYymoGRRv9kxncH877tjQ3SmKWqyM4HzSIE2MKHpQhkeXoXe
	Do2Po+gn1TFVQ55gjUlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQlLm-0003Yp-7J; Sat, 02 Nov 2019 04:49:22 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQlLi-0003Xv-1I
 for linux-rockchip@lists.infradead.org; Sat, 02 Nov 2019 04:49:20 +0000
Received: by mail-pl1-x644.google.com with SMTP id q21so5198210plr.13
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Nov 2019 21:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6KEh7TRla3phFtffChnzOPGlNejbVwg6pgp6pH7Euro=;
 b=KCboCeGncABvmSD4ldQGfe/53Tl7q/zM6YoWlRy7Ga4SZrkDraaHQnpDgouaZLKArs
 q31daNu8Vr4P8CMg0hEmfs5T6jDF70a5l+mCEqAyAFdU68XOvbWvePHTVfG1qojH0Z31
 2662+Nd8ky3KQ+WERch9ZstmS+DLuh5zkqCgA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6KEh7TRla3phFtffChnzOPGlNejbVwg6pgp6pH7Euro=;
 b=l6RfcxdoIamoTsKUfp0qUQ6rlSE+RFkb17BCyA+TJ/a7K8Wl3mwEyKamXlFvfbw1MY
 6QjUO/jFOlC9BRJRt8lCKeBzdPIusW43yl9BwogWU8y2NiUTup8KUjBDE8q9bzfrWzwY
 S0ZdU70HdlBl2NdpHMaCRebPStDKEHGddsy38y0QfCIwHeKdroz3BjCO/BQ0ktg4HP2J
 hLTWHbQSycl0xDcz1vfO1lmBKWhrGEo8iBH0x3jtJgpdcUpKMD+yAASXaNopNnmF1wKd
 hLSxRToh8me8z8DDewMJdHkJ1rEfJbp2OdZk9SjLkCKCKPkqLhnEVgdA4ZebJwCD93ua
 J8+g==
X-Gm-Message-State: APjAAAV7k5AAqaiOTe7YEqTJ1AKrmKlPaGl7yzxAohZwe1N2kmnR/JDG
 qZKPOTl/tnowkkic1yGP0Bso4o1CI8A=
X-Google-Smtp-Source: APXvYqzZKtUYfrg5eo3lVeRH2Bid+QuLJn9vACT4FJFPa4ymDnYtYiDYOdBTfPDdn1AxA5qfkHgmYg==
X-Received: by 2002:a17:902:700a:: with SMTP id
 y10mr7332096plk.42.1572670155212; 
 Fri, 01 Nov 2019 21:49:15 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id e3sm8774686pjs.15.2019.11.01.21.49.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 21:49:14 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH] configs: Rename roc-rk3399-pc -> roc-pc-rk3399 defconfig
Date: Sat,  2 Nov 2019 10:19:02 +0530
Message-Id: <20191102044902.8979-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_214918_225707_3658B7F6 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: u-boot@lists.denx.de, Levin Du <djw@t-chip.com.cn>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

roc-rk3399-pc_defconfig is committed in below

commit <8a681f4c5aa15db51ad0209734859c9fe7c29cfd> ("rockchip: rk3399:
Add ROC-RK3399-PC support")

which doesn't follow the existing defconfigs on rk3399.

So, rename as followed with other rk3399 defconfigs.

Cc: Levin Du <djw@t-chip.com.cn>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 board/rockchip/evb_rk3399/MAINTAINERS                        | 2 +-
 configs/{roc-rk3399-pc_defconfig => roc-pc-rk3399_defconfig} | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename configs/{roc-rk3399-pc_defconfig => roc-pc-rk3399_defconfig} (100%)

diff --git a/board/rockchip/evb_rk3399/MAINTAINERS b/board/rockchip/evb_rk3399/MAINTAINERS
index f8299d9460..17dfafb743 100644
--- a/board/rockchip/evb_rk3399/MAINTAINERS
+++ b/board/rockchip/evb_rk3399/MAINTAINERS
@@ -52,7 +52,7 @@ F:	arch/arm/dts/rk3399-orangepi-u-boot.dtsi
 ROC-RK3399-PC
 M:	Levin Du <djw@t-chip.com.cn>
 S:	Maintained
-F:	configs/roc-rk3399-pc_defconfig
+F:	configs/roc-pc-rk3399_defconfig
 F:	arch/arm/dts/rk3399-roc-pc-u-boot.dtsi
 
 ROCK-PI-4
diff --git a/configs/roc-rk3399-pc_defconfig b/configs/roc-pc-rk3399_defconfig
similarity index 100%
rename from configs/roc-rk3399-pc_defconfig
rename to configs/roc-pc-rk3399_defconfig
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
