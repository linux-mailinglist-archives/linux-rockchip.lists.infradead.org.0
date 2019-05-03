Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4B013657
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 May 2019 01:48:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2YE7/CPXbo+oAfcnx5BsGIOd7IQVAuvWWnNK+258lEM=; b=Lg3hIja6AlUs0a
	Y2lugDG2Cn8NE5B6VFuW56d4zieTCgn6DY66fIYGAc1+bkOwwaxloXTW0kkmXBOcRYuduYrYUBEsU
	oWG3z+y1UBV2iXwj9Es4VXDBNqb5xOuSTPIApd0vWpXJWQ69xMO04aw2IWj5a9RAlI5O2r+WKTRx/
	9abd/QBXVmPRFpr1JHSiBiBKCNiHJ+5thU4Em93rMNWLmlbh8E3jn/QfokBlzYAh6PokA4VDqMmd2
	eQcB462kbJt3f3mt8r6JqPSM3cjiBbA1e4gIkc3h8qoUi546J0Y4cJvHUzVNUKunmOFn+ccimYGdI
	aZlt9/C1GvCKxNRjwMWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMhur-0006E4-T2; Fri, 03 May 2019 23:48:33 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMhui-00067D-On
 for linux-rockchip@lists.infradead.org; Fri, 03 May 2019 23:48:26 +0000
Received: by mail-pl1-x644.google.com with SMTP id l2so3415799plt.11
 for <linux-rockchip@lists.infradead.org>; Fri, 03 May 2019 16:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PEbVvCDak8dCpI2HnTFwocIiYZvOr0ebCOGSVDXq9U8=;
 b=RGP+SCYMLHEk5WjF+mHki7uJYv5LbeWl/W59ixEjp7SqRFxLYgdyeLFfNsh1I0z0mT
 cb/sCQwX3HTa38w/+UuVb9LXLRoXVIFbivcUH4aHmEsAorf62RmWtD+486wZ5IFXqkCK
 k4ZFTZOefUEJopS0g8GIGZg3EOG6KH+WOcI/s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PEbVvCDak8dCpI2HnTFwocIiYZvOr0ebCOGSVDXq9U8=;
 b=AUZUT651OshnZcLMokdCPTaN9YmoQrVu+Mdi50DZhgRWhceT+oeZvi03Y05P6cHanK
 cTRhDGEa9lef/Sh4HO+4/uOHDiJjmkSFRe622ldKhFqPSUI+4ILA+MY4Uz1n02zep172
 K6Z7xYGEfy9IIlrHS2GZAR3RfmHaZy7gTX1YJq9vRv5MKWNwy0hOLGI6lJJUK2UdBNHd
 zdFGanbq3G5tSQShZu/RyWRFIMA13/I8khAnj/lf7iSTSkM/XBCtAJpwrScztg4e6rGm
 ZU8m5vj3tqlxhc/BLWjig+nlo4OEnKiis4Rzt5nCpb+SyC5R21V2YO706rhRJOn/WTCP
 FcJw==
X-Gm-Message-State: APjAAAURFHGbNUm8NqGyJpVXEh3ff8zkj+5BtAiwf7CCQD3drE7fHgNn
 EFOQleONkQxQH4lqYKj2F/78ZQ==
X-Google-Smtp-Source: APXvYqxeKcjKarf8WpC7SOBVbIuTMoZDl+AyM8KJSHyTbJ15hk1FROhg2a9ECGzoKsHIXJxvHdpNjA==
X-Received: by 2002:a17:902:b703:: with SMTP id
 d3mr14041484pls.93.1556927303213; 
 Fri, 03 May 2019 16:48:23 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id p6sm4231875pfd.122.2019.05.03.16.48.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 16:48:22 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] ARM: dts: rockchip: Remove bogus 'i2s_clk_out' from
 rk3288-veyron-mickey
Date: Fri,  3 May 2019 16:48:14 -0700
Message-Id: <20190503234814.230901-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_164824_830075_BCC0DB89 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 amstan@chromium.org, briannorris@chromium.org,
 Douglas Anderson <dianders@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The rk3288-veyron-mickey device tree overrides the default "i2s" clock
settings to add the clock for "i2s_clk_out".

That clock is only present in the bindings downstream Chrome OS 3.14
tree.  Upstream the i2s port bindings doesn't specify that as a
possible clock.

Let's remove it.

NOTE: for other rk3288-veyron devices this clock is consumed by
'maxim,max98090'.  Presumably if this clock is needed for mickey it'll
need to be consumed by something similar.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron-mickey.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-mickey.dts b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
index e852594417b5..f9c4ece3c0d3 100644
--- a/arch/arm/boot/dts/rk3288-veyron-mickey.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
@@ -142,8 +142,6 @@
 
 &i2s {
 	status = "okay";
-	clock-names = "i2s_hclk", "i2s_clk", "i2s_clk_out";
-	clocks = <&cru HCLK_I2S0>, <&cru SCLK_I2S0>, <&cru SCLK_I2S0_OUT>;
 };
 
 &rk808 {
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
