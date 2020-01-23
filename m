Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB8F14697E
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Jan 2020 14:47:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e+iEcd2n6AJjH8a7KXNKSLiaF/QfgR+DwRg5knmDiG0=; b=IrDHPekKevPflw
	7lbaR1v8+5DKX0zaxIAJ2KmNudn9GMDVn9UQkywdLrvLxp5lA3Sdo7C88DL1uXgokgMYgOLDnwPlA
	+dALO3I0cddUEWs+7XY+z5tdyPNIMdHvj0UG7jRCOMkoo5y3DqASSL84plPKp4fxQDwKaJV3520Pd
	VIgTfe7AtRwn/LkeGuVIIHufSS4Dk4o6gvSx/GzgzsVIL1UvP5sYgb9MbnxOEmFfe1aGpP3k+lthV
	1g1+dyOJ8Q9NoCrwsmtIX5v5flOviYyp/SXeUhM/xFOSXtknlf4fa4P3orTcFd3JjoSPk/md1lW8Q
	VdBgRy7rFqwenktsstUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iucpB-0007sd-E7; Thu, 23 Jan 2020 13:47:09 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iucp4-0007iw-4Y
 for linux-rockchip@lists.infradead.org; Thu, 23 Jan 2020 13:47:03 +0000
Received: by mail-pf1-x441.google.com with SMTP id n9so1555415pff.13
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2020 05:47:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ztEalupp6BA2B+aVvucMD9r9wzMzPi+seVlAfbkGBSY=;
 b=r2TdoJh3xNcI6aPSASEmM7iVrVjviU5MeW5jnthU0vB/kcfqFr1FiiRWiPbmfx68SC
 KB+gldgRCAcRl9GljoTr8lfedMt80CfwxE9rqrcVUwFUFTApepBPwrNSU5GpvlBbTEnf
 jQpTUp3N0cyod2pFFZDcpGDcBCwTPZ8tTu7so=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ztEalupp6BA2B+aVvucMD9r9wzMzPi+seVlAfbkGBSY=;
 b=kHE+vA2DWpTVAJi0aC8uhjmUk470PzsSjiGoeQvb7cehikeeoiLZmr0jzSwGD1400M
 gqZfwhDD1eoInNrXL3VdHpZZGtfpEq3olVB7X45A0uzEaWGPvu4jgnkLFDumS8oZYZcW
 VqNJtA7H0+b2kvS9foagYIaAoUPSApgbs14z+WMXRHScLghO9UEnp49ZiGhhzIL/Qlgj
 cmvNZlTUbwPJc7fDIim6zZ2EmP9uaRzunPkeH/QUWTB9gbcfT54oFzG08vZ+HHD/ba9g
 HGp1DtB9ho5PZ6QYpdadsYMcEfSCwSbIPsBaVPF0XKACryc4UJwttzRCE6Wn129tBSyD
 OYxQ==
X-Gm-Message-State: APjAAAWeOyvxB3CUUpMw36ccQTDPFur1PEKAEf7z1IIg7idjBefZWgO8
 enWu+eClKkryO4lMxyihQtmHwQ==
X-Google-Smtp-Source: APXvYqxFydOJhKTAqNJ/gjtGiD+8xdXtBtmxRScl0NEraMgo7kIjEDWa7r9V30TPrrfAY7WNIg7mcA==
X-Received: by 2002:a62:5544:: with SMTP id j65mr7702003pfb.121.1579787221444; 
 Thu, 23 Jan 2020 05:47:01 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.109])
 by smtp.gmail.com with ESMTPSA id a10sm3119275pgm.81.2020.01.23.05.46.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 05:47:00 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 2/3] ARM: dts: rockchip: Fix ddc-i2c-bus for rk3288-vyasa
Date: Thu, 23 Jan 2020 19:16:40 +0530
Message-Id: <20200123134641.30720-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200123134641.30720-1-jagan@amarulasolutions.com>
References: <20200123134641.30720-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_054702_196050_3FD3258F 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

ddc-i2c-bus routed for HDMI is i2c2 not i2c5 on
Vyasa RK3288 board.

Add support for fixing the same.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/rk3288-vyasa.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-vyasa.dts b/arch/arm/boot/dts/rk3288-vyasa.dts
index d2f79e5bee87..88c63946f2a3 100644
--- a/arch/arm/boot/dts/rk3288-vyasa.dts
+++ b/arch/arm/boot/dts/rk3288-vyasa.dts
@@ -150,7 +150,7 @@
 };
 
 &hdmi {
-	ddc-i2c-bus = <&i2c2>;
+	ddc-i2c-bus = <&i2c5>;
 	status = "okay";
 };
 
@@ -347,7 +347,7 @@
 	};
 };
 
-&i2c2 {
+&i2c5 {
 	status = "okay";
 };
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
