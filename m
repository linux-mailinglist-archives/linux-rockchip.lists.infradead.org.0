Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 254B6181FCB
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Mar 2020 18:44:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cA6fRZGLsuQLRNIqPIMLkKorXJBmahGDDSMeIEjGcbA=; b=YwLi0iHrIQBwFxO3LzNdopCg3V
	QdBXuOf+YBrPVTq+gE40pOk7duQvGDylkmKh2HGq5sKAvXBwQeRNmDVwt9SPOZ5juTszROKTZoGE6
	XwTuMXoOaiZtlRXOVQlvMqgkM+HDtknftVvLeH4dQezYZyJk8fwaCib3nXY4X6RmnUl0Cyq5ROqse
	0CJAH5YJOFGBj0lXrC+Is2XV51j8iNB0F9hsgKup8T2neje9zzpU2Wqvo2FOXpZEorDn/2DqP7ccy
	wF4S9F4qQkEZXe1wCGe8EG2WPp1UIaQOQ1rddVHnndFToP25W4VjEQ2EHkpMKPjOuZqmzEjyQKnYQ
	HkTwmjkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC5Oq-0007hT-1O; Wed, 11 Mar 2020 17:44:08 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC5OH-000792-7n; Wed, 11 Mar 2020 17:43:34 +0000
Received: by mail-wm1-x343.google.com with SMTP id r7so3693362wmg.0;
 Wed, 11 Mar 2020 10:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2AsgLfDS4BH//bZzgWykwkfl2H5xfBl7A5I1f5MVUhg=;
 b=noA+/Z1EG3yGGgsXsC3y4RHI7uOm1qZ3feLx1mroJlFFWwEH4nPGzOdJY2WeYCDqko
 rfb5yFjjPfD6VFWhKPBS/cGHC6sJ/xh4uKadBsoJE7yhAW8VVNT5OnxXjUxP9NlSZkB6
 V9UFsnuCu25buJPjoWovmUTCGtLIlxBUE9oZTZX9YAyIRWr6g7FDSwNkP3SALevEnjdy
 X08kf2GRkmZ/F6jb9RlouPZAlvA44bxzRj0VROfW3N6OUFCUpzxY6hHBcdKWgk7Bguak
 OoSslOOoA9z0yf3oATpR/5CEB+uk4Z6HQHw0LEJztYZRESj67kK3amEz4RAZ8AiM1EyF
 sdvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2AsgLfDS4BH//bZzgWykwkfl2H5xfBl7A5I1f5MVUhg=;
 b=R7+wYU+BVZ24KsVMtjrvI70I2AsAwdrKHnNBQuU3OeIwa8Bwz9O1/TBquvcFYuj7dJ
 U8Lv6wvHU9iwTeC1SFxmmQqGY6RW5kuJ5/ls2BpS14J768B4Fzllqf+3hhOO2mk7phMa
 nN4gvYY/gg+3UhXtG3gudrKuXB0bcTT5VGIZO8PjXr3ijgEjHbctRI9f40cqNIU159Le
 60LIlBZyQtVSNro2ok3DEgE+4fbds4ix2y9s54cREX7VooFg8xmdh5oKs/L/qOWfIeFu
 oKWrI+8tC1yIuSObHmZwzO3mw//1RG9mxzQOdVNmlFTCY/frX7+BeRUwCgEoK9X3NKKK
 jHmw==
X-Gm-Message-State: ANhLgQ20X9ggwcxBXYOkTD8mlfoELpB+WblrnD3ee1N1AYlIcEm8CxzZ
 RqcGfOaoFgNWPiGORAAAlmQ=
X-Google-Smtp-Source: ADFU+vsGIHuUFLLALx+EZj11W8sJMVfT8mLaq6XyHbUXZwurQL5aYlv5E13r2MsZ4Y6uPYTI1JfqPQ==
X-Received: by 2002:a1c:ab07:: with SMTP id u7mr4521159wme.23.1583948611726;
 Wed, 11 Mar 2020 10:43:31 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id d1sm8933166wrw.52.2020.03.11.10.43.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Mar 2020 10:43:31 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: lgirdwood@gmail.com
Subject: [PATCH v1 2/2] dt-bindings: sound: rockchip-i2s: add #sound-dai-cells
 property
Date: Wed, 11 Mar 2020 18:43:22 +0100
Message-Id: <20200311174322.23813-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200311174322.23813-1-jbx6244@gmail.com>
References: <20200311174322.23813-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_104333_275194_2B52206C 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
so add them to 'rockchip-i2s.yaml'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
index eff06b4b5..7cd0e278e 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
@@ -77,6 +77,9 @@ properties:
       Required property for controllers which support multi channel
       playback/capture.
 
+  "#sound-dai-cells":
+    const: 0
+
 required:
   - compatible
   - reg
@@ -85,6 +88,7 @@ required:
   - clock-names
   - dmas
   - dma-names
+  - "#sound-dai-cells"
 
 additionalProperties: false
 
@@ -103,4 +107,5 @@ examples:
       dma-names = "tx", "rx";
       rockchip,capture-channels = <2>;
       rockchip,playback-channels = <8>;
+      #sound-dai-cells = <0>;
     };
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
