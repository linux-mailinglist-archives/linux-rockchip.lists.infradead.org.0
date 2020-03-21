Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 523E818E4F3
	for <lists+linux-rockchip@lfdr.de>; Sat, 21 Mar 2020 22:56:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wP3kgdcrK1zBBR9L3aKIJAUA1hjKDn8K3v5v9+cIzB0=; b=s6OK0HmuR1vlW2MuuZYvb8QKp7
	bt3qiJeLywAyy6d2GCH2eqLHq40nHAwM1FTYfCzHF8KL4mBA+BI3JpL9UgiTbnN+Lq8O7sUUY0l0J
	cl1KnbwD/EsidSVsFkJopkcl5NQw3/pJ7Tielvkg82s4cZ34L0EbTmzmvnW9vlCAALeXisQMr4EVu
	C9dVUsHFFiyeb1FLONfm8Ym/T9s2LG5WuuIdZhNIG7BnWn84936Q9i/SMWm+4fCaKgcAO5izcQohd
	sZ5a2Fcq7pBYbe0pO9oAuHRtnBjrKai5h5HUSgPynxDir2JrLs/9eMkAgCMnr/i2cYD1xQ+1Gy5+1
	T17kg82w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFm6E-00061i-5z; Sat, 21 Mar 2020 21:56:10 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFm4h-0003b4-Fp; Sat, 21 Mar 2020 21:54:36 +0000
Received: by mail-wr1-x444.google.com with SMTP id m17so2908399wrw.11;
 Sat, 21 Mar 2020 14:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Bxcr3nNnRLp2AG9FEGj15mIEI/kFHkOT02wIVui39kg=;
 b=SapOtdi4CUcy3PP4jh3XqIzTwXML5Wv/wnJb/OwAFB538IYea64Y6ExPjoIG0SzOij
 aazEeEFBMTbZRxJ4kBvuZfLBiYAQZaKjT4GHqsjMWzxDsm0IKi+b3CQjbL1re6vuKlxd
 dke7jLU0SPvxmQsNC4eBMfOrWt5c4xe+Qzhd8PQkjITqEcKBE2vwkjz4WEbWOyOj2TcF
 mnwq3ZsB1PXSG5zUc1W19Xb7xG0a5/GCRVcZUpk+RakV87qMK5qVqLisUIY+bXPYTbj5
 X8cwdXTV+ynxu6erBzcT+pbSop0dflfJjK2Atx6w31QfcHGOb7g8tZMpvEDxMzx1vuKB
 ORvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Bxcr3nNnRLp2AG9FEGj15mIEI/kFHkOT02wIVui39kg=;
 b=rrsRP/iKYs7urQeJ8qGBMwucpOGrdwsKg3VO0tXGpph7klTgpyjISbpjTyFbQJ1DfV
 5iMZt91kg6mja2LzdIEOcW2AfYq+QsrAZR+A421UY4Sm7KD5YVueAb7rA0gT0DGJsQCF
 xJb4XBs3i0O88hVw7XQC4jO5o3TJFGBUpQ1t38y89NM7EzaFTpAg9YsIy0cAZsCjtGPm
 bHsvZrgdMfaaPx5IMW4GNIXkiLkz95Q8kTpFrfkmJ4QDSZ1wx8X2L3idR/pcufwhTAav
 2vIfQTxgkO7x87hxIzj2gHDvnnRz9e55QlQGmSgPhMHMwbqBMeXGjoj7iCVdAe9mK3BD
 jPYw==
X-Gm-Message-State: ANhLgQ2OGU4nCCOF3uo13RjdsW6DEXkQtRe8eJs5fcRrgjmGmcBr5PPK
 NwW6EU9JVpHMFJ0jy54bs0Q=
X-Google-Smtp-Source: ADFU+vsnerx72rIsn/e3/S0PUZrUA3I/NLF1OcJy9UClE81yPoADVu/RCabv7zYfNmrnE2Ad6JVelw==
X-Received: by 2002:a5d:528e:: with SMTP id c14mr20126416wrv.308.1584827673988; 
 Sat, 21 Mar 2020 14:54:33 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id l83sm14113796wmf.43.2020.03.21.14.54.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 21 Mar 2020 14:54:33 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 4/6] arm64: dts: rockchip: fix &pinctrl phy sub nodename for
 rk3399-nanopi4
Date: Sat, 21 Mar 2020 22:54:21 +0100
Message-Id: <20200321215423.12176-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200321215423.12176-1-jbx6244@gmail.com>
References: <20200321215423.12176-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_145435_535646_5D62F7C5 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, aballier@gentoo.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

A test with the command below gives for example this error:

arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dt.yaml: phy:
'#phy-cells' is a required property
arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4.dt.yaml: phy:
'#phy-cells' is a required property
arch/arm64/boot/dts/rockchip/rk3399-nanopi-neo4.dt.yaml: phy:
'#phy-cells' is a required property

'phy' is a reserved nodename and should not be used for pinctrl,
so change it to 'gmac'.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
phy/phy-provider.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 20529105c..1d246c2ca 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -525,7 +525,7 @@
 		};
 	};
 
-	phy {
+	gmac {
 		phy_intb: phy-intb {
 			rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
