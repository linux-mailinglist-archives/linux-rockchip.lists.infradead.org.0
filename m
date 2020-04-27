Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 403001B98B5
	for <lists+linux-rockchip@lfdr.de>; Mon, 27 Apr 2020 09:32:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JA2ydeUNt7L/tQvppSbS9TaGZyvlCjngv4qsSZnoi5U=; b=jFH+9+d9wN1hil
	toGkHIRHRD100ohwJQZ7AA4bBclB+YJxbysAWndI7T6lGbhxDCnsLeaMOOjFvoYk3D1V3yBLiEfIf
	uQ6HbxwQ46cx8PA0wbzGegiF6K+YOZy+yhnO1zXIGKrVx59A/a0W0ulDPgucYyEh3suXJZM/7Ancb
	wXuT8sY3TRUYiJMC9UxyyY2YHH4oxs26gYzXpVo7VHHrGHs2KL4Gl8hkZWI5s0GqoXBwT1HqF8Xqd
	ZKQZORSnoe3dJEV2enYo7/vVexKEWocB1Lipxrte2ba16GLdZWXRCxX7BKVtV8VJEhhRUshXOq4U6
	9NU2/ryzcHycViBAmEsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSyFt-0000JI-H0; Mon, 27 Apr 2020 07:32:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyEz-0007yY-Kq; Mon, 27 Apr 2020 07:31:48 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9AE3220728;
 Mon, 27 Apr 2020 07:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587972704;
 bh=W3coOJ/9IbQlK6OGsMXbje2kmeFvSqao3U4W5PN7U+0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2nvhZUVCE5MBhKyCf/PDJo9ooUIzM6DS9en+pF9MuQi3vO4D2cqssJiJzPGZw5al1
 3SuUIyTgfFyOYEHBHIbjliqJKPcCV1drJWkvtSbw/EM+aXoIU/zXKiVoRwqboKPC8m
 +uQ90S8bQyV6GACWIOQEwlt05WMT9rQ2dZULr4i8=
Received: by wens.tw (Postfix, from userid 1000)
 id 682645F81B; Mon, 27 Apr 2020 15:31:42 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Dan Murphy <dmurphy@ti.com>
Subject: [PATCH v2 1/3] dt-bindings: leds: common: Drop enumeration for linux,
 default-triggers
Date: Mon, 27 Apr 2020 15:31:30 +0800
Message-Id: <20200427073132.29997-2-wens@kernel.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200427073132.29997-1-wens@kernel.org>
References: <20200427073132.29997-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_003145_695470_19CF547A 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org, linux-leds@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The bindings currently list a very small subset of valid triggers for
LEDs. Since many drivers or subsystems in Linux register custom
triggers, the list would become very hard to maintain.

Instead, just drop the list and allow free form strings.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 .../devicetree/bindings/leds/common.yaml      | 21 +------------------
 1 file changed, 1 insertion(+), 20 deletions(-)

diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
index 4c270fde4567..3b3cdab3fc15 100644
--- a/Documentation/devicetree/bindings/leds/common.yaml
+++ b/Documentation/devicetree/bindings/leds/common.yaml
@@ -79,26 +79,7 @@ properties:
     description:
       This parameter, if present, is a string defining the trigger assigned to
       the LED.
-    allOf:
-      - $ref: /schemas/types.yaml#definitions/string
-    enum:
-        # LED will act as a back-light, controlled by the framebuffer system
-      - backlight
-        # LED will turn on (but for leds-gpio see "default-state" property in
-        # Documentation/devicetree/bindings/leds/leds-gpio.yaml)
-      - default-on
-        # LED "double" flashes at a load average based rate
-      - heartbeat
-        # LED indicates disk activity
-      - disk-activity
-        # LED indicates IDE disk activity (deprecated), in new implementations
-        # use "disk-activity"
-      - ide-disk
-        # LED flashes at a fixed, configurable rate
-      - timer
-        # LED alters the brightness for the specified duration with one software
-        # timer (requires "led-pattern" property)
-      - pattern
+    $ref: /schemas/types.yaml#definitions/string
 
   led-pattern:
     description: |
-- 
2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
