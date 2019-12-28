Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C00D12BD24
	for <lists+linux-rockchip@lfdr.de>; Sat, 28 Dec 2019 10:31:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i1tm+fE1+vWJVNk95t55aDn0lk847eyC1UVWq7LkpOo=; b=DQy0+lQ5KfcMV/Chyftw4e8C7T
	aBD8li6A54KRcfRpLfo1Cy2MG5XbDrxRZuIpeRxDRzOljnZC22YweutT8EvWwA5oKiW2AtdMYN7lw
	O/1am7QMCgh98++YF8Oz5w+rTKAiyO4IGlaSF4Le2WDrYX8UaHlh8NFEFCKkXDWaJVyGYTxVJ3+3j
	ffnsj1FTGEKYi+s4U+rYY0yr8QwOM/M+F+90HSvrN+OzjNPSDOrdioXi2Z3B1d4r+XlvhboF7/l62
	+sLP5TczMCcI9reI9CdBi+IVvx9swaRmvXnRx9Ito0zz1PZ6b6j/fosMtVFJk0AuCzBl+pjGZi6jI
	u8ijPQtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1il8RI-0002RK-Kb; Sat, 28 Dec 2019 09:31:16 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1il8RF-0002PE-VM
 for linux-rockchip@lists.infradead.org; Sat, 28 Dec 2019 09:31:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id g17so28189202wro.2
 for <linux-rockchip@lists.infradead.org>; Sat, 28 Dec 2019 01:31:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=o9uPVfods/TVOloLC6n+hV7w8ZRoPGnL5hHWUQYyLUc=;
 b=o0Fg+5oi5HSyrmfBEZQq8OyJEp0SmiMuZ0A6ig6Fmmz+gqe/bQgTgSi1lLY7NsLW7T
 m4uuidhPQuD611jssxsFee3aPyYuQ92haXXnqhqFFk0cp3aaDtkfwev12eSX5kSCkc1D
 IbpnolD1qExRXPokhFofQYFRO2h8yKPLDkj0nQ3rMe84NhDLSjigtjHPkUS8khMPg/U3
 Moud9sMPQuEtJ2sULFizndLerwDI/znaFA77AvVMSKq2QjPpQS2qJ4nRTpfR8VERWFL0
 0V3gezJUiyS3z9M1TcwjB+KkGgnrAD0qH39jhJJnrKTT09RqWej37cbHZ8mAGMXi1f5R
 6aww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=o9uPVfods/TVOloLC6n+hV7w8ZRoPGnL5hHWUQYyLUc=;
 b=HTW4QAwIz5C891kKc5s8mNHYhdBLNGPCYB7obA7Zn0icPU6/mKyiGOow7H4WTjFR7+
 aZdBPBKwT3i69vBFxG48yBLU1Fs2U/Xar62sk0qeuC2X0cPyI2xIb1aGagAnDg9ydOew
 QcpHJ/Oarm4IO4vy+82TU1qqQGXQS5GDMjdN2N7RAVHXhejFgx5wkInAWA51m8OATeR9
 zoqO2ShiaALjWSl7gETRMi/POfPidSRLxP3RDKzhey7poDhE6d8mNbosN60Q/xoqNhH0
 SffNP7CN6B7fkO2FhO16xWOb4DcZM2SVqLAvHMP6O4rHv9s4APVyFJz6j+ESeaGKu8rI
 AmMg==
X-Gm-Message-State: APjAAAWCQ3WaBFJJZfl9Fj3cdJwJlMgepKfxKRjUdnNROJfOMX/wmp2h
 gvlO9cJC/QH9f6n02vNVZ+g=
X-Google-Smtp-Source: APXvYqxwhzxrrXhowjx87gKHx7n+poe0jh8A6oRsexhxdA6dIFus+27xymrwqEZwbLBvIWQomfISXQ==
X-Received: by 2002:a5d:46c7:: with SMTP id g7mr54555918wrs.11.1577525469686; 
 Sat, 28 Dec 2019 01:31:09 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w20sm13776710wmk.34.2019.12.28.01.31.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 28 Dec 2019 01:31:09 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: robh+dt@kernel.org
Subject: [PATCH v2 2/2] dt-bindings: mmc: clarify disable-wp text
Date: Sat, 28 Dec 2019 10:30:59 +0100
Message-Id: <20191228093059.2817-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191228093059.2817-1-jbx6244@gmail.com>
References: <20191219145843.3823-1-jbx6244@gmail.com>
 <20191228093059.2817-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_013114_007641_D14C7B3D 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

"disable-wp" has been removed from all Rockchip eMMC and SDIO dts nodes,
but people still continue to submit new patches with "disable-wp" added
to other nodes then for the SD card slot,
what it was designed for in the first place.
So clarify the "disable-wp" text by adding that this option should
not be used in combination with eMMC or SDIO.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
index d668d0fbe..3c0df4016 100644
--- a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
+++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
@@ -99,7 +99,7 @@ properties:
       dedicated write-protect detection logic. If a GPIO is always used
       for the write-protect detection logic, it is sufficient to not
       specify the wp-gpios property in the absence of a write-protect
-      line.
+      line. Not used in combination with eMMC or SDIO.
 
   wp-gpios:
     description:
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
