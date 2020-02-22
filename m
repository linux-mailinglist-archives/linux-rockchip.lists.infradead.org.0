Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A802F169204
	for <lists+linux-rockchip@lfdr.de>; Sat, 22 Feb 2020 23:05:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6XlxgY0sb0D2VzWxASLY1ur08xR3+DG3BIXPvnQlpEs=; b=MwrmRGUgJ+ostR
	En03/LSy/SInpIpPqs1Wf6kJVIIXtEuWchFrpLCa7aNFqaXPLmYfTHmerMY0yfyIvmKnMbyJ84xif
	29YcKoHViyseBMsn4K53eCest/4afFJd9fnjuq0wvjFBl5giSadBA/sR6kE4RE3SB1RIH++F2oSWx
	OBRwsv9L2BGiTnig/O+AJfNuSCunNHInVFKkCvMnooSQocakke5JZ7V9kMvHCKXcvh2ss0hNjRvK4
	zSgIdjuaZyXmR3bT8X45bc2odGotUH/n0NVvpAUqNsPcAA8q0Q4zVgWcEoSdPTxj45chclim10dyX
	Kei294Q/IQocRxGbJ9Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5ctO-0006Us-Ng; Sat, 22 Feb 2020 22:04:58 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5ctD-0006LF-Vp; Sat, 22 Feb 2020 22:04:49 +0000
Received: by mail-wm1-x343.google.com with SMTP id s144so7814093wme.1;
 Sat, 22 Feb 2020 14:04:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WecMb7XC+F71BDVsaL32uLe6ZzntKQ/HmvHZGIxKOJo=;
 b=vaQRLUiXMysRiqAX5vXIJmFxStAF6yVfmi7kTKH6PDgx7XQtA6hIFgpYkLBjVc7dkk
 b246OiYA+c5qNP4lkL0WZFN9Q3/rs5qeIfuyhJnqmAHPTvSb89mC0nK+f0+2yzCdwHEY
 XCRmEOYlLF0u19r0cdKa4w8fShbIQ3J6Gy+/i6lVbPtl/5PMWz16MoSF/AI3cFTRfQBg
 NQ+sWNAucuPhBBexOVEvTIrQ9lbL4O+/5NXAoj0RF3jro7onhpxUgjl/JumoRTDPtKkd
 b+W8cKKUM7/pbC9US5LV/dEoD++R3xcnCGlFxezyIV+P4ZmidMBfqIxtBiSh+6LEP81d
 AOmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WecMb7XC+F71BDVsaL32uLe6ZzntKQ/HmvHZGIxKOJo=;
 b=UfYu+Amt/6T08ZMhi/x0WlF+sG92nV7XIy8Qb1NSxmAXUQ1qEejaDV9FOY4CXk5TQT
 jLPXffHHJeYx8KJ+8DSzuLRQBEbjOT0VEKcDtmE8GTv7leG4jFlg5UR72pblUnJQ7VlU
 arf6NB0ti4BfK/edoJZpGJucU9adfRQEvRSQYn9uoQms6Sqb3ABT1UYEBebc8g0BeB7r
 ITThU7SFMalXQPaU4kfxOw5UMbhlkEvLE4KorcjqLgINt+YZfVYuJRI5G69YRC1puRDH
 ngw4WSNacqHVEPY2jvzPrKsoqeAJqWA12bThPJkn+Yay7QLT/bZG+tUnyrTOvfhhw5iT
 KgJA==
X-Gm-Message-State: APjAAAXI3NsPCdJTxXOTJMuM6N/I1cbZ5OlBvHtUiAsfxiAhfyuhBGSS
 vgXCFCndFd7oevh+m0znEbgXWhz3
X-Google-Smtp-Source: APXvYqzs7BVHkeHnT7UYxo1FTYom5hTfpobIJ3SJTo2JpyOe1y1s1pwDWzNEu/vAeDHrx55v44VS4w==
X-Received: by 2002:a1c:7d92:: with SMTP id
 y140mr11567948wmc.145.1582409086211; 
 Sat, 22 Feb 2020 14:04:46 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id
 q130sm11151738wme.19.2020.02.22.14.04.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Feb 2020 14:04:45 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: yuq825@gmail.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH RFC v3 1/2] dt-bindings: gpu: mali-utgard: Add the
 #cooling-cells property
Date: Sat, 22 Feb 2020 23:04:31 +0100
Message-Id: <20200222220432.448115-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200222220432.448115-1-martin.blumenstingl@googlemail.com>
References: <20200222220432.448115-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_140448_046013_E25FD2BC 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: robh@kernel.org, tomeu.vizoso@collabora.com, linux-pm@vger.kernel.org,
 airlied@linux.ie, linux-kernel@vger.kernel.org, steven.price@arm.com,
 linux-rockchip@lists.infradead.org, wens@csie.org,
 alyssa.rosenzweig@collabora.com, daniel@ffwll.ch,
 linux-amlogic@lists.infradead.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The GPU can be one of the big heat sources on a SoC. Allow the
"#cooling-cells" property to be specified for ARM Mali Utgard GPUs so
the GPU clock speeds (and voltages) can be reduced to prevent a SoC from
overheating.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
index afde81be3c29..33548ca2a759 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
@@ -107,6 +107,9 @@ properties:
 
   operating-points-v2: true
 
+  "#cooling-cells":
+    const: 2
+
 required:
   - compatible
   - reg
@@ -162,6 +165,7 @@ examples:
       clocks = <&ccu 1>, <&ccu 2>;
       clock-names = "bus", "core";
       resets = <&ccu 1>;
+      #cooling-cells = <2>;
     };
 
 ...
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
