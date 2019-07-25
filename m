Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA455753EB
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 18:26:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=koLkNX9Q7x83KsK/pVLyb5K+My3JEFCaBVhhy637Q08=; b=VpW8SAC3hJ7/q4
	OrcXV4PRbMlsC4WQm8yuBMdxNfbTzuk2tdr4sRJqv8He8E58ISRLFlXvYBINBDrHKkK2QE0lB6u+A
	Al7OaVIf4qFBrfhNP1CZTNy74fFp9SYXNfmFfP1OtMJSK80g/BSr5YUMta8oF/sMOqbJWONJof4AQ
	gw+vsoQ7x95UGOnivyLIheXx+fhpZy80hUP13pisdQ0vu6AfusFY/ngfuja+XYRKxoUb4NWOdkRvn
	S/f3vQhfO7A5Ey6W0Z/jnmFskRHsp8k4h+6646EGQkHMtqoJoq8/hu6AUp9qOofZvvb5pH2qCKPUo
	ILw9b18xpYOdH5rXMKvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgZy-0003eG-1w; Thu, 25 Jul 2019 16:26:54 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgZt-0003Y0-6O
 for linux-rockchip@lists.infradead.org; Thu, 25 Jul 2019 16:26:50 +0000
Received: by mail-pg1-x543.google.com with SMTP id i18so23301208pgl.11
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Jul 2019 09:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E85E3sDx7QmmDk1Qya6eXBYlrdWHNfL1kHhjlDR1b/g=;
 b=nc35E9AiCxeMN6103rkz1HbVehimcAIsRv5kmqeNqFtBzLYzuF5GKi8GybaCFRfkBw
 GYgFDUxn1tiZXm7chrKpcUqt7R5JlpnRHkXa3MVtg9JXROBE0lleyygvEPEhhm5Uu1eg
 GX65gtCZw958XOITkmgt9flz9uZzXjFiqfXyo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E85E3sDx7QmmDk1Qya6eXBYlrdWHNfL1kHhjlDR1b/g=;
 b=K3CDP6em3gIrRcSmvlCANeOAZRR5MCx1jDXBtwc1vgI6sCKtiZerZHpJmjKnrMfU4n
 DbFlOBS8U4/2BgSsihEs0XoMPKa6440Uez+owDPD+IcyJ1Qgy42XoPRMuQLVxoRXDXrj
 vwvyNqprveu4+yt+cWCef50y2bfYm3Po1ZhuseG0qVjDKuAKM155gapZVSkP4RG6hshP
 ON0hr4QzGYLDFjwg6XGWzlMKCTQCp8KHR5mjtNu2WIVokBPKn766fkuKx1Cxse/L7eU6
 vjL1W/sM3BOskrVV/vu5vcwyzC6WP5lsKK2zhxTn0VHwL0EH/gGqSHlBks8SlQspteHV
 I2ZA==
X-Gm-Message-State: APjAAAXC6HpTfKhGMv22FlvxzShL06RBrurL2wsPEwKhxp9SimL/s5wx
 iwuYAhk+gRsdXqgIqjxyY8Nc/w==
X-Google-Smtp-Source: APXvYqxXCKBHc8/5JBlcotEIfAlJsGQkxesUvB8hvVKuLAmWzu2UryLFWJCi0O9Qp+rvx6/yEIiT3A==
X-Received: by 2002:a17:90a:f491:: with SMTP id
 bx17mr95823296pjb.118.1564072008342; 
 Thu, 25 Jul 2019 09:26:48 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id o128sm55953582pfb.42.2019.07.25.09.26.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 09:26:47 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v3 0/5] Add veyron tiger and fievel boards
Date: Thu, 25 Jul 2019 09:26:37 -0700
Message-Id: <20190725162642.250709-1-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_092649_233596_E9FAF879 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

This series adds device tree files for the veyron tiger and
fievel boards. It also reorganizes display and backlight
settings for veyron devices, to avoid duplication.

Previous versions of the series didn't have a cover letter,
v2 can be found at
https://patchwork.kernel.org/project/linux-rockchip/list/?series=144987

Matthias Kaehlcke (5):
  ARM: dts: rockchip: move rk3288-veryon display settings into a
    separate file
  ARM: dts: rockchip: consolidate veyron panel and backlight settings
  dt-bindings: ARM: dts: rockchip: Add bindings for
    rk3288-veyron-{fievel,tiger}
  ARM: dts: rockchip: add veyron-fievel board
  ARM: dts: rockchip: add veyron-tiger board

 .../devicetree/bindings/arm/rockchip.yaml     |  30 ++
 arch/arm/boot/dts/Makefile                    |   2 +
 .../boot/dts/rk3288-veyron-chromebook.dtsi    | 115 +------
 arch/arm/boot/dts/rk3288-veyron-edp.dtsi      | 173 ++++++++++
 arch/arm/boot/dts/rk3288-veyron-fievel.dts    | 299 ++++++++++++++++++
 arch/arm/boot/dts/rk3288-veyron-jaq.dts       |  55 ----
 arch/arm/boot/dts/rk3288-veyron-jerry.dts     |  58 ----
 arch/arm/boot/dts/rk3288-veyron-minnie.dts    |  52 ---
 arch/arm/boot/dts/rk3288-veyron-pinky.dts     |  17 +
 arch/arm/boot/dts/rk3288-veyron-speedy.dts    |  58 ----
 arch/arm/boot/dts/rk3288-veyron-tiger.dts     | 125 ++++++++
 11 files changed, 647 insertions(+), 337 deletions(-)
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-edp.dtsi
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-fievel.dts
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-tiger.dts

-- 
2.22.0.709.g102302147b-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
