Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0375B190D79
	for <lists+linux-rockchip@lfdr.de>; Tue, 24 Mar 2020 13:32:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z0UNGgpEukXDwu12CUqCkvAFpXidCxI4J5qx0sCd1Y0=; b=Tvwy1d5ELexDXsBHFv/SeLDh2i
	HkQKNY0vtGOxExm5G13+D9LtkKAzfv4w1NpqBsp8NFAeIMLPnhEuZGC8F6YNqOm0kKM4pBuTodecX
	Kh/5r+gxbJX7Cyvnm8L2fU6Cixm8a0WUI1oSy5ThcTm9jYn8lmFBU+5kes8nWjn+2sHfRNHj2jJC3
	bta4ezoEcFpwEYiz1oWFIKRqe2nhjjA6x84fLjbR1colwgGqhbIiI81cDVRAdEU6gyAoxB0E+yLmo
	0br7wG2AaK7cgZ80y2SoroKP5/cJpP6zAzAWD+keDqeNoKL34irX70dK3AsyWuT+Htjtix7d0CRy7
	E4ZP36pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGijE-0003js-Il; Tue, 24 Mar 2020 12:32:20 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGiiz-0003bH-KU; Tue, 24 Mar 2020 12:32:06 +0000
Received: by mail-wr1-x442.google.com with SMTP id t7so16507689wrw.12;
 Tue, 24 Mar 2020 05:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=atHO2cCzgOMkDYaDPQrtakvRe3Ydex6Qe9QJS9pzzX8=;
 b=TN2CwCxNWlYG1JfPYWRaeZ2r0cqpdUtqKj4DxRAJ+Vcp+KYsdavUdDfv5MMVdDam89
 QsN80wkxMFNnZKozAPaRWDyiNjGIWm6PhzoTyQ4IluC4yb2kXCp4GlMM3MOTkPGhRcrv
 jg55wqIdWr9IpkIsMIrKYD+pUyQIECB7tWUNtG/DY/Dyoux6kqUgoyMCatfdDPKftdod
 nUyk7yIZBGb/ZZIWWVo/QXHt0YLbh+mpnA6XO0f8vHvVvsyg5SWsO0z8oGQ5LyzPwZ0u
 tdtoZFiZgqZKL+s+SDNNFuHRKgGDu2/NE51KiSKcxi2rG1z1IfTz14bey+GX8KqPdW8U
 tvFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=atHO2cCzgOMkDYaDPQrtakvRe3Ydex6Qe9QJS9pzzX8=;
 b=G5cLYcyU7r7snqdbp8G2apRAP/C8Y7zn/h/wt4kvW6ghiciTGd+7NeC9+Zj1xe+VlQ
 Y7I2lxWF3JNhV/sc9OP9lUv+HwIgmLrOAHoRTZCBLU4aQdWn/mNsBy4wDxh1CzDloiuA
 8CIjxajd2Z3WhRE5p/V+jIikGbe2PfP4LFv30CDyZIfyJHARGFXBlvIY5Hm1YLIHBi2k
 u0S9c1dAN/G3Vyv0iz32QBE5mdLnTdPfE+AfvZk2OLI7unmSbW4FKLHbxMSBKsl+m48Z
 ygHZ7xwZSll5vSMe+4TQF5YBsSzzJU6eGudXCJimo6lhaKy+mTtrqRuBirF/SWIzJIaD
 9UwQ==
X-Gm-Message-State: ANhLgQ3vIXz1e71evkBQHDILNQig9LTI8YH/k0QJSr8838CWHRpjB9vD
 teAHkhSjwWarFsuYkXQdkc0=
X-Google-Smtp-Source: ADFU+vvwc7ZZX4Hf0V7jwJm1hdyW8wN+2s2AUbaBpJXWj10D0kLU62MU+6Z0rzHvlOwAe0jPxp+BMw==
X-Received: by 2002:adf:f688:: with SMTP id v8mr36392951wrp.344.1585053123707; 
 Tue, 24 Mar 2020 05:32:03 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id k185sm4215029wmb.7.2020.03.24.05.32.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Mar 2020 05:32:03 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: lgirdwood@gmail.com
Subject: [PATCH v2 2/3] dt-bindings: sound: rockchip-spdif: add
 #sound-dai-cells property
Date: Tue, 24 Mar 2020 13:31:54 +0100
Message-Id: <20200324123155.11858-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200324123155.11858-1-jbx6244@gmail.com>
References: <20200324123155.11858-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_053205_675210_EF55A772 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

'#sound-dai-cells' is required to properly interpret
the list of DAI specified in the 'sound-dai' property,
so add them to 'rockchip-spdif.yaml'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/sound/rockchip-spdif.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
index d1c72c8a5..0546fd4cc 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
@@ -57,6 +57,9 @@ properties:
       The phandle of the syscon node for the GRF register.
       Required property on RK3288.
 
+  "#sound-dai-cells":
+    const: 0
+
 required:
   - compatible
   - reg
@@ -65,6 +68,7 @@ required:
   - clock-names
   - dmas
   - dma-names
+  - "#sound-dai-cells"
 
 if:
   properties:
@@ -91,4 +95,5 @@ examples:
       clock-names = "mclk", "hclk";
       dmas = <&dmac1_s 8>;
       dma-names = "tx";
+      #sound-dai-cells = <0>;
     };
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
