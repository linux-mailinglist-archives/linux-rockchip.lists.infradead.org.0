Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E8218C17B
	for <lists+linux-rockchip@lfdr.de>; Thu, 19 Mar 2020 21:35:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uhv0+SBomHXdqWSE6bEMUxhJMbdZ1DxgXNgSXQFBdd8=; b=md0Ouy2urI86eR
	Fa3TwQPKNwMjEaJvV2KauOXhgppI0fLiSDKUTkyOLQFA7KYM1YWAOXZIYGwLWcdPXBGJxwilU0Q4z
	TTj8Sk1cG2nXLM1xn1WdYMUtw2C8pbK0whU53ShWQkFLsQTYjWDwvZsTVJl++FJsef4QErqqtj1Dn
	WJ0J4sGQ+mlkEs5tgUh3fMMxJ/MyDAWf98SO5lBQE7knw8aLQUTHQzUOxKXjtQP4FYlZmo+sVH+6+
	mBYwYqSd69zJUieCFwKZ8OmzH16csojXfvdX4A9QoUv9jpqZ4rj87OA4KE5f0C2DLigVnbG3d14Fs
	qctPGtb8iH4mPz8u24pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF1sp-0003qn-1c; Thu, 19 Mar 2020 20:35:15 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF1sd-0002dD-H9; Thu, 19 Mar 2020 20:35:04 +0000
Received: by mail-wm1-x342.google.com with SMTP id 25so4201934wmk.3;
 Thu, 19 Mar 2020 13:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9RRhROApEcb204AeuCPMJcD4+LhyGPoAGUFvTjnDbJk=;
 b=WuLvPS7MO3JjnrTdyLixJJozVeO+g7q1Bn4vs++KlrdqcqvFbmcfIvQBAOmORNBXEN
 wTsrY+3Rltjd0CtCSmKo/JSpM8G/UiHa2FqYByMaBiNH27pT0aQDVlA/F38jZWBCLA6K
 cPh0AtXXzzN1uOb1RgNafI/aAn0mNdaFWPLu7CPMl1f4ergvhXPzcc0gUtUESz7xsV44
 mF44eDc9PFdb3XgU0fjvQUIP85tl00qiJ3sd8kGOYXnyzy72PiOrOE4qQSnhWFkp9aCh
 IvgNK8o2T12ufzW65jJ+3HzRLdXDrEc4D84ZGPqMMvpLy+o7AzkWskaGWokGAw9tgDlP
 Yvag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9RRhROApEcb204AeuCPMJcD4+LhyGPoAGUFvTjnDbJk=;
 b=AunqPWyWW/nMroPEwFSNtNOuiEvC63ZI015COXkzzrhInsoEe2Taq3peyiHzF9XQn2
 jEgfaORsPk+NQVtmKpsUBsHH91BC+5XjVcBlXyQWTXIF4UDa8GAjdxcunApgGeN4MhNx
 CgF9gh34bBg0u1uFtAv9HuH9LKEzc02McoyvyRoL5Xlv1P7SPHrKTU05m0uRSipU/2f7
 qIe+Ox9vTKkmIz2AgYeKDfnbcG+I48KDE237WzgJDtkxC/F/o2tZjrRXo9bK3f6nRPTN
 K8Kp13wDyP+/yZe5ac3e2b/Fxum6bcAcEZvxGq86uN+TgP9ZO6ulYb0ICCcicoqzf32T
 fknA==
X-Gm-Message-State: ANhLgQ2KDOxSz7HQO6xAf1/t+DnCFQVnrk6AL6spsuJokCypR34WJT62
 yThFDrjifwnECpAOsBadg9Cq5YeLpKg=
X-Google-Smtp-Source: ADFU+vvN87aV9h5DQk373Le1newa2fcLju+bTKeM04zZKybI27soSbkw0cX8T8TODsUPXqH4hqsCZA==
X-Received: by 2002:a1c:c907:: with SMTP id f7mr68703wmb.121.1584650101005;
 Thu, 19 Mar 2020 13:35:01 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F13710ED00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3710:ed00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id r9sm4744968wma.47.2020.03.19.13.34.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 13:35:00 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: yuq825@gmail.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v4 1/2] dt-bindings: gpu: mali-utgard: Add the #cooling-cells
 property
Date: Thu, 19 Mar 2020 21:34:26 +0100
Message-Id: <20200319203427.2259891-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200319203427.2259891-1-martin.blumenstingl@googlemail.com>
References: <20200319203427.2259891-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_133503_572347_5640F17B 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
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
2.25.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
