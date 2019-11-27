Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9021110C045
	for <lists+linux-rockchip@lfdr.de>; Wed, 27 Nov 2019 23:39:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N0lUoaiVRQIBT+PjAImJ2PeYN0xTAM4fePvo71ajuqQ=; b=FHvl0CNUa9Py1w
	GhQ9aQ0ANFrssEIKi5v9gYDbF+RJ4Is7BtDQu5AVv/fkVKMF6YBqw7mH6isP1HKwyIGh9c3zDrdrL
	bY0cCFyqxSzFrP6NYlOxFdmuqpj2JkbIIli0DF0dDeZA1MCF4B3obPkgKKLcmpnCn9W1nAhd1TQPq
	ro1mO6cLOBYynXrSRhFygqcqFFe2xXaJvZzdUzpYeY87HwrW3a3vzSV6mggUb3UzYNfCPKAAh98hZ
	BneKxTCdk72LruiJj1TW7wP0Ei8lBhzfW3gHkF1OVBC3840Whvo1NxaqfLEHqTgOpmrseDaA7FId0
	QKqT5fWqsbD51Zn3HWGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia5xz-0003hN-9F; Wed, 27 Nov 2019 22:39:23 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia5xv-0003gC-09
 for linux-rockchip@lists.infradead.org; Wed, 27 Nov 2019 22:39:20 +0000
Received: by mail-pg1-x543.google.com with SMTP id e6so11711710pgi.11
 for <linux-rockchip@lists.infradead.org>; Wed, 27 Nov 2019 14:39:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EHVbHRnSyLZIvpQSJdKBuo3vPPZlfvB1a4T9xCgdTuw=;
 b=SFs22QNC5hMmqvZPW40mcmcBBPmEpdsOtYsMagwY9mLUglW4JRbrQ2P/YfKX6icomt
 NLkRrpV4fVV4DqFWxY2+o1sPGR5wSnEhGfUZ7IaeX0l4QG1cLky+X1vAO9Oe3Z1+jozY
 3Fc0j+mCHcHt0e2uOj7TE4FtHTgCkuVdKYlXI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EHVbHRnSyLZIvpQSJdKBuo3vPPZlfvB1a4T9xCgdTuw=;
 b=ZTTre7Mjo6O/DJIM+B30VvPVt88zMNbzTjdj4kd4QuY7hUEZbmbtG+1HwIrV3qZIdm
 o6TlcIExKxjDZmOAadcEbAWjVYVQ7NxZfLJBkIz9hVw6Ntrg/2cIJMIWwdr4uIivxMJt
 zC4U5kRNFUBT8K2hhpB9EO/ZdPDCEtSuhDSxlWSYtYLsJKB5HpRfhO3somnYClocbxe6
 tbizoMduMiCyAnnrMENALQbH2d7sckzX2KOaZCNY0f+CDxeOGaX16PzLvH0W685Pu7Hd
 At8YOZEkeWKr/RCuRgstc2/f0/oy9hOBVzLv/TyJHYoWHqP3RPjRCsHc8JXgXWTqf6vF
 RRjw==
X-Gm-Message-State: APjAAAVAhpHSkqQR/kFJyj7ahwHY/fd2H3okf15jnz1CfsZL4BVYgp6t
 L971RfWBObZsDPHcpLj/ZKw/uw==
X-Google-Smtp-Source: APXvYqzJpOpejjYn146jmpkBi176AhZDdn7NcHNIXMFDPoF5M4picmxeNcIUsNSjUqkWCk7fHfCosw==
X-Received: by 2002:a63:1e47:: with SMTP id p7mr230935pgm.339.1574894358017;
 Wed, 27 Nov 2019 14:39:18 -0800 (PST)
Received: from apsdesk.mtv.corp.google.com
 ([2620:15c:202:1:e09a:8d06:a338:aafb])
 by smtp.gmail.com with ESMTPSA id d6sm17699992pfn.32.2019.11.27.14.39.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 14:39:17 -0800 (PST)
From: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>,
	dianders@chromium.org
Subject: [PATCH v2 0/1] ARM: dts: rockchip: Add brcm bluetooth for
 rk3288-veyron
Date: Wed, 27 Nov 2019 14:39:08 -0800
Message-Id: <20191127223909.253873-1-abhishekpandit@chromium.org>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_143919_069323_73F0D311 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


Hi Heiko,

The necessary patches for this change have been merged into
bluetooth-next. Please pick this up at your convenience.

This patch enables using the Broadcom HCI UART driver with the
BCM43540 Wi-Fi + Bluetooth chip. This chip is used on a RK3288 based
board (Veyron) and these changes have been tested on the Minnie variant
of the board (i.e. rk3288-veyron-minnie.dts).

The changes are applicable to the minnie, mickey, speedy and brain
variants (all of which use the Broadcom chips). The bt-activity node was
removed for all Veyron boards and shouldn't affect the boards using
Marvell chips since they aren't using this out-of-band wakeup gpio.

A previous portion of this series adding the compatible string to the
hci_bcm driver has already been merged into bluetooth-next:
https://lore.kernel.org/r/4680AA6A-599F-4D5E-9A96-0655569BAE94@holtmann.org

Another patch series to fix up the baudrate settings and configure the
PCM parameters has meen merged on bluetooth-next:
https://lore.kernel.org/linux-bluetooth/20191127071105.GA32820@akivisil-mobl1.ger.corp.intel.com/T/#t

Thanks
Abhishek

Changes in v2:
- Changed sco routing params to brcm,bt-pcm-int-params

Abhishek Pandit-Subedi (1):
  ARM: dts: rockchip: Add brcm bluetooth for rk3288-veyron

 arch/arm/boot/dts/rk3288-veyron-brain.dts     |  9 +++
 .../dts/rk3288-veyron-broadcom-bluetooth.dtsi | 22 +++++++
 .../boot/dts/rk3288-veyron-chromebook.dtsi    | 21 -------
 arch/arm/boot/dts/rk3288-veyron-fievel.dts    |  2 -
 arch/arm/boot/dts/rk3288-veyron-jaq.dts       | 22 +++++++
 arch/arm/boot/dts/rk3288-veyron-jerry.dts     | 22 +++++++
 arch/arm/boot/dts/rk3288-veyron-mickey.dts    |  9 +++
 arch/arm/boot/dts/rk3288-veyron-minnie.dts    | 21 +++++++
 arch/arm/boot/dts/rk3288-veyron-pinky.dts     | 22 +++++++
 arch/arm/boot/dts/rk3288-veyron-speedy.dts    | 21 +++++++
 arch/arm/boot/dts/rk3288-veyron.dtsi          | 59 +++----------------
 11 files changed, 155 insertions(+), 75 deletions(-)
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-broadcom-bluetooth.dtsi

-- 
2.24.0.432.g9d3f5f5b63-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
