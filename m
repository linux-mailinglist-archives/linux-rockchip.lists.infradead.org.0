Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 860C4B72AB
	for <lists+linux-rockchip@lfdr.de>; Thu, 19 Sep 2019 07:30:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6A/fIPxiB3Au9B2mctCixQnCZMoxiTzZh9MgAgYG0k=; b=fQgpQqPP9hpuxU
	+YJFgszqr37Py+G+c5BEyckCbkS/i81XqME3K1ttdGR1/YmNktRNYQNigAQXyyxdTpylYsE7Xe9Vq
	wBNvwoBer7eUnfEZH7ss/B2SttaqCtyiV8FpfzQVDjlxh7nwJ+JjkIEcxl7b3DaLfpgZw5Y7eXbG6
	cpPw6Px0YVr0DaDRIvrkCRY55eznpg57OPFgWu8qHv9BsEL1yB+bf6DdWZarPWFThwQUxbparHfk9
	h5VmEJ9uAENdbBQilD5ACWrw7dkD4+kMGbWylosJsnqanyP4vu8u+qmW6xAnRqxeFJ4DNn+g3JmBN
	0hHlNFnU0FbXbEtnbSBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAp13-0006IC-0F; Thu, 19 Sep 2019 05:30:05 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAozw-00056d-ON
 for linux-rockchip@lists.infradead.org; Thu, 19 Sep 2019 05:28:58 +0000
Received: by mail-pl1-x644.google.com with SMTP id e5so1045283pls.9
 for <linux-rockchip@lists.infradead.org>; Wed, 18 Sep 2019 22:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HFlAwaqhm8dlhIw/iDdHiwYstLYBPJtkXdnpZsgY5Eo=;
 b=RRpsPIuiBJnuKBdUY6V0x4+hBkYZMrgBDYGWMfKllUbD982ZH9yAwmJU5e8dPh+Uo3
 po9p2/lHZvJZjkCmrAoFuvCK/1Z8l6yT4w1I5aU55mAdNZEmZ0SFxubbu6dx/X/R23Kq
 WROHdjAFrQuwa3ZShhcbJUburskKc0V/JS6q4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HFlAwaqhm8dlhIw/iDdHiwYstLYBPJtkXdnpZsgY5Eo=;
 b=bTUx+w/QrZJVpiaBB9qr2+QPnkyaee5G4i+sW4UZdarVRjFvBvAZ8iN1pBI3WXLV42
 R6mr6xa94drmhuKYsLUDM+mwnoxWHNdu356ne3Ucm4gyH7I1ftvTBt5Dxx9wpe0O/RYe
 n5bGsXh9KANzLxQHVR7EqCSwm0rPKxf5aUY7bcrW8FLuF8yCWP9WtZ58HfHHXV0Jl250
 2XRqgGSiYhcuLVnExJPJNy6t69ffFzh91AGiuI7oNG2PSbCvpTHtQook0Doetqcqt+sE
 Vts9CK6ptz84Amv9ccSAVjuLuF41YlzWav9Nep+YujHVm3CLj8H9HcTnYRYSTMqtogHe
 XvqQ==
X-Gm-Message-State: APjAAAUHECRQw4ARumVBJtH/kRdNMOrBUfTtm9VYftXd2yco+j663D+z
 RGLg7iKzmOe/7ckzX+RBCbT79NPWZw4=
X-Google-Smtp-Source: APXvYqxbOgq1HDVr1LGevm/V0Fyf1WFz9mP7w7bIeVUZhpKQfytlplyhSQTNZCS1BhH/JexW+9Zemw==
X-Received: by 2002:a17:902:9896:: with SMTP id
 s22mr7836198plp.207.1568870935949; 
 Wed, 18 Sep 2019 22:28:55 -0700 (PDT)
Received: from localhost.localdomain ([49.206.200.127])
 by smtp.gmail.com with ESMTPSA id z20sm5051930pjn.12.2019.09.18.22.28.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 22:28:55 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>,
 Akash Gajjar <akash@openedev.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 3/6] arm64: dts: rockchip: Use libretech model,
 compatible for ROC-PC
Date: Thu, 19 Sep 2019 10:58:19 +0530
Message-Id: <20190919052822.10403-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190919052822.10403-1-jagan@amarulasolutions.com>
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_222856_840675_4D374103 
X-CRM114-Status: GOOD (  10.59  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Da Xue <da@lessconfused.com>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Though the ROC-PC is manufactured by firefly, it is co-designed
by libretch like other Libretech computer boards from allwinner,
amlogic does.

So, it is always meaningful to keep maintain those vendors who
are part of design participation so-that the linux mainline
code will expose outside world who are the makers of such
hardware prototypes.

So,
- append the compatible to "libretech,roc-rk3399-pc" and
- update the model to "Libre Computer Board ROC-RK3399-PC"
  like other libretech computer boards does.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
index c53f3d571620..e09bcbdd92f5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
@@ -9,8 +9,8 @@
 #include "rk3399-opp.dtsi"
 
 / {
-	model = "Firefly ROC-RK3399-PC Board";
-	compatible = "firefly,roc-rk3399-pc", "rockchip,rk3399";
+	model = "Libre Computer Board ROC-RK3399-PC";
+	compatible = "libretech,roc-rk3399-pc", "firefly,roc-rk3399-pc", "rockchip,rk3399";
 
 	chosen {
 		stdout-path = "serial2:1500000n8";
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
