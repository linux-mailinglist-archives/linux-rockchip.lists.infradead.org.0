Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA6075406
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 18:28:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z1ho2yLh/ewO7Y2mxQrZWzP11aspR1O/Ema1EnpxkBE=; b=fS9p+5hiDbvloy
	Qg2DAqFJc7VaRz4vBNwKJogPrmWqWI5HAdHJqIlW4JCX1mbSuKXCOzEYlJAIrhUiXrcQDvmOf0iKC
	HIZ/IZHSDWjm0jfbKiRwa8u1N88FBtvS7i//l34+wYsjqj0E5xgKWz7OYQMuKkdmKLGgY9gYspCC/
	pq315DN1kLtIKzcbo+RnkVunFbKREWwI8m1UMlMOYgtcjLR6vQGEFJ6cblWm5eEeDtsWVMacVztz4
	k1iSHI425M1dhlhhQtssOcO+DmVAmqRBrOIxYlhDv4stb+ECmxTfICWYuuA2xuAX1Oo+aN6mYBoUi
	ItIpkgaBrmHfW/5QmUMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgbh-0004ld-Si; Thu, 25 Jul 2019 16:28:42 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgZy-0003f0-Lc
 for linux-rockchip@lists.infradead.org; Thu, 25 Jul 2019 16:26:56 +0000
Received: by mail-pl1-x642.google.com with SMTP id t14so23582921plr.11
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Jul 2019 09:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gG/c1rZYP/Lhsi0EI5Q4hiD7HEHYOFL8aq+0uJtZefc=;
 b=O1Xy4Ph8788g0Z4Il0vBcgtmO+JIakNribPM/6yKvje4aoJHvcCGsZdzzp0FNjNYhQ
 4/C2bAEJWnOSbANDuRkOqXzad7ebkfoVQe1Q3CAibxLHWGjYgShslvKDqYwTz5htwpVZ
 YVL3rwRVRSqsyKqZk6uCqe7iigXw6VDQRDhTc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gG/c1rZYP/Lhsi0EI5Q4hiD7HEHYOFL8aq+0uJtZefc=;
 b=jfNuZFzdvLxIxE4T9BVOBtyW6SVzKoPspSHo9LiU1Xy5AzCxN/4tZFi4farzrZ1vm/
 +lDkWH1DoVZUIJth//u2q5Bpi9qT8qudB7SATiTYB/5nslTYLRGK1i7AH4dt7s19a5FB
 icZzfOnP7hhTD/lT5i0rKeWkYmwb+5MVYSWUa+GANVfmjXOyVMqds0QF5rn2LM/mAApG
 3OVYM/CuVEpp4cGFJDARWNFR//8AlTH3f42ry042WI/wvRVyITbiW3Q4LO3sn4PfUuOR
 AK5Yxy4eSAFYKRQdIN/vkThZti/aYTTrSKoIXaYp60hcA3eESf8Y45FdER13WG5a2fky
 IXNw==
X-Gm-Message-State: APjAAAWZ1fg42NWcrAU4CqVUFP0irQFEaGG5cfPhP/1zyUK0I0GH9kC7
 BwS4Tntr4yd8hpfIdiezMIDePg==
X-Google-Smtp-Source: APXvYqzte4K3dxMRHhTLkufFdXK9mPLrT5LC6RPLbefenNQRXKuDKLMvv88/r5XkgwQzItAZBCEeOw==
X-Received: by 2002:a17:902:d70a:: with SMTP id
 w10mr86920964ply.251.1564072012666; 
 Thu, 25 Jul 2019 09:26:52 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id a5sm43394436pjv.21.2019.07.25.09.26.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 09:26:52 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v3 3/5] dt-bindings: ARM: dts: rockchip: Add bindings for
 rk3288-veyron-{fievel, tiger}
Date: Thu, 25 Jul 2019 09:26:40 -0700
Message-Id: <20190725162642.250709-4-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
In-Reply-To: <20190725162642.250709-1-mka@chromium.org>
References: <20190725162642.250709-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_092654_814300_577DACA6 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Fievel is a Chromebox and Tiger a Chromebase with a 10" display and
touchscreen. Tiger and Fievel are based on the same board.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v3:
- patch added to the series
---
 .../devicetree/bindings/arm/rockchip.yaml     | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 34865042f4e4..01eb1e107ea6 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -128,6 +128,21 @@ properties:
           - const: google,veyron
           - const: rockchip,rk3288
 
+      - description: Google Fievel (AOPEN Chromebox Mini)
+        items:
+          - const: google,veyron-fievel-rev8
+          - const: google,veyron-fievel-rev7
+          - const: google,veyron-fievel-rev6
+          - const: google,veyron-fievel-rev5
+          - const: google,veyron-fievel-rev4
+          - const: google,veyron-fievel-rev3
+          - const: google,veyron-fievel-rev2
+          - const: google,veyron-fievel-rev1
+          - const: google,veyron-fievel-rev0
+          - const: google,veyron-fievel
+          - const: google,veyron
+          - const: rockchip,rk3288
+
       - description: Google Gru (dev-board)
         items:
           - const: google,gru-rev15
@@ -311,6 +326,21 @@ properties:
           - const: google,veyron
           - const: rockchip,rk3288
 
+      - description: Google Tiger (AOpen Chromebase Mini)
+        items:
+          - const: google,veyron-tiger-rev8
+          - const: google,veyron-tiger-rev7
+          - const: google,veyron-tiger-rev6
+          - const: google,veyron-tiger-rev5
+          - const: google,veyron-tiger-rev4
+          - const: google,veyron-tiger-rev3
+          - const: google,veyron-tiger-rev2
+          - const: google,veyron-tiger-rev1
+          - const: google,veyron-tiger-rev0
+          - const: google,veyron-tiger
+          - const: google,veyron
+          - const: rockchip,rk3288
+
       - description: Haoyu MarsBoard RK3066
         items:
           - const: haoyu,marsboard-rk3066
-- 
2.22.0.709.g102302147b-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
