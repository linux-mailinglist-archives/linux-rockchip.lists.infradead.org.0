Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0902D1B0CB6
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 Apr 2020 15:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUdpeqsI12M/91yZ8UpUtMr4B+n6A5D6IWfiSwqyv4M=; b=KL1OSMjKKGHwwL
	GcDRi9Gj3S+8PL1/Sq7lnAFrwqVbjsFms9IqbrdIeBAOkeuJpuG2UDdlnCbmlqGy7M51uz6bjiOYr
	lfFkdu2W6c6P93vDcnQPxpUKgLoYugtB1y8Vok63T3BcyUNWnXSzAgLfvY8KOd4n5XMAWsCJfUQF9
	tYMJyc5hLz2mXqVttEsZNPNJbm1BCMnaK2+79BhvNkMA36nFsXyJuMBO2SeVjAXdmKeswwpz2Scnf
	SoKdediOAZJxIWXH5P+pHR7/iqMkzx442pibWrBzbIw9sNuuel25Y7UeRf5ydpzuuUC3zpeC4Y58U
	FnwAU1MgGDPzCytZ9IyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWYU-0005xp-Sh; Mon, 20 Apr 2020 13:33:46 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWYR-0005x8-AT
 for linux-rockchip@lists.infradead.org; Mon, 20 Apr 2020 13:33:44 +0000
Received: by mail-wr1-x442.google.com with SMTP id j1so6757751wrt.1
 for <linux-rockchip@lists.infradead.org>; Mon, 20 Apr 2020 06:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8BFEyEY0pQowkZqKW1UkfT7rrgGTA/DT5VZkesq580U=;
 b=jI6iP14b7dzEFoZQvAAIUYghaAf74HD2b1ii3wq9eMvvEjaomCD7s16mvfUIQ3rDjA
 n5zzGtHPJnqu8IG4W2z0EORu4pNg2WrZLng5F5k5QzOFEylOaUGwxN+82zE2B47vgRIQ
 WLMY9m8uHHcghaTF0wunUg+LFTcKRF4gbhCPF5op07R8yWMAi3J69LC3QtnD3C3lkdMu
 3ASAmvnv/2rus6HAuPIVE7WBgsN0oPVDV7aV0dqd3pBPdC18aIFKwVlmxa+v4y+UOnKU
 eqXdkvPDSZ2DyO3uodzwMos8ejLoUotD4Zx7aoJTfF9GesOL5Hx+Mw3nbLUWgNWTRpWy
 eNbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8BFEyEY0pQowkZqKW1UkfT7rrgGTA/DT5VZkesq580U=;
 b=NECr8gcLJJ0YZ6Jaj8t1j+swPKhmP4pJZEBqudfOszhdTdVfIfRRLqGhw9MeobkoyW
 H8IIgYL0mXdOegYQimE/c5LoLexA8Gamrc7fVxBBwFnDnTVYT8LjeClhOdVh+MlBcpip
 0wEq/8UP7eaNI0a94aoZ/jnD4ZxpWEgtSj+Wfby4KX4X4cnjma4C57YdYkqCRfRdoREW
 kf5eUtcLTvihAOFk5zgOnIhF4Ijxv+KgbRqCjSlryXDPKd6R0GcqtEwSNUzbrDHwcfDT
 BxeG7aJXEkWxE1Iy3RCeIRHkeRM0g6KgohgCp+nhPg0HyeGIbdMBarqq8dYujbJDHulw
 HbSQ==
X-Gm-Message-State: AGi0PuYgW7tO76kTNoFLCDImPNQIma6GoX8bmjNOpQQmymB5XzUP062T
 1Myfi/PffW/z+7uZvRNPGds=
X-Google-Smtp-Source: APiQypKZk4QdbUtcxcSUADGSPzH1arT+R3V9CoHvjnRas3SWIG9QuEjLf0kMSsO0onIm5RbW3IJU1g==
X-Received: by 2002:a05:6000:f:: with SMTP id
 h15mr18501426wrx.408.1587389621483; 
 Mon, 20 Apr 2020 06:33:41 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v19sm1310706wra.57.2020.04.20.06.33.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Apr 2020 06:33:40 -0700 (PDT)
To: heiko@sntech.de
References: <20200326191343.1989-1-ezequiel@collabora.com>
Subject: Re: [PATCH v4] dt-bindings: rockchip-vpu: Convert bindings to
 json-schema
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <12f6d7cf-6af6-4f54-3188-65e73b703a72@gmail.com>
Date: Mon, 20 Apr 2020 15:33:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200326191343.1989-1-ezequiel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_063343_383989_FFBAE683 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh@kernel.org,
 linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Heiko,

This patch was applied by the media people Hans and Ezequil without note
and test I think.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-vpu.yaml

Errors for example:

  DTC     arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml
  CHECK   arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml
arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: video-codec@ff350000:
interrupts: [[0, 9, 4]] is too short
arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: video-codec@ff350000:
interrupt-names: ['vdpu'] is too short
arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: video-codec@ff350000:
interrupt-names:0: 'vepu' was expected

See:
https://lore.kernel.org/lkml/20200403124316.5445-1-jbx6244@gmail.com/

+  interrupts:
+    minItems: 1
+    maxItems: 2
+
+  interrupt-names:
+    oneOf:
+      - const: vdpu
+      - items:
+        - const: vepu
+        - const: vdpu

Vs.:


+  interrupts:
+    maxItems: 2
+
+  interrupt-names:
+    items:
+      - const: vepu
+      - const: vdpu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
