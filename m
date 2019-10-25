Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5DFE5640
	for <lists+linux-rockchip@lfdr.de>; Fri, 25 Oct 2019 23:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Amosv+4Ey/GrADdGg4E/pNuCXPh+gd89Pt2JaiLmZn0=; b=Vm0cewU457kgF1
	3uhL0q5KkLWibzPTBLOVHUfsTVj7SrvVtOr8M7/4Bq8Fuwl/lqr8mhA+9hEkW6qjU9pRGNPPWmRKE
	4e/xbWatCAuWiJIYi6++U0e8ZQ5RvZG3Zc7GYdNUblcaw+Zd/RV9Mqfo5dR9U81KiCdq63hUtwVg8
	ONeQGjH3nJpFZPlDqpI5m2Csp5U6tJK4e7fUAkF+rw5j1UsrGAlZ1AT7QqJXaE1u9Y/xB/BH35Iqn
	07j7TwsqHb0J1EzNIWwrcom+hdOQG/u4evirE+YE0sIyguEbKUTLYmA/nbY9Q6sXCzPrroEw/bTtT
	jM828GYouEI/xorIVE0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO7YJ-0003lp-3I; Fri, 25 Oct 2019 21:55:23 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO7Xy-0002MW-11
 for linux-rockchip@lists.infradead.org; Fri, 25 Oct 2019 21:55:03 +0000
Received: by mail-pf1-x443.google.com with SMTP id v4so2474359pff.6
 for <linux-rockchip@lists.infradead.org>; Fri, 25 Oct 2019 14:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=89m06+xkP6iuCxM34qSVOV2dKIIRXKWy8S7NlrA4pyY=;
 b=dOqaIHVg3QZ2lOLTZxqk8+KqZisI933TPy9NwHt6X67IsFjKJ07OSsZTtGNXnMvfCU
 ii6mzEJjdHl013PciiJ+mojyAEWZJnjpNl8ve/ceTQ2XzD5byKJ301oAqTkQmM8foaDS
 oB0C+5qzR6tUr9kERgkvlCgHbbBhvuy/bLc38=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=89m06+xkP6iuCxM34qSVOV2dKIIRXKWy8S7NlrA4pyY=;
 b=GXo3R6INcc2+NRYEtUfJKb8hbMmVqRXFwvHYmEV4No834JtVoKr14vMzZJhQlCksN/
 h7AjCl6foUrCxmwnxLtT3wsIHgng6jdOZckK6aGz+vthTTxZNqdBnFGcy90TwaZi7WkG
 Aqt2f0Lmzil5u6xbWrliex+uSbZ11koT4C8uWVUWJX0iLEaoyd3/fWzDRkTMDNXaZwXm
 ENAT85lyGy1SfjYNSUproFkc9Ut19js8c4aOMM0RX7PwFGcJhaF+/xCNHG/vkD/a2Hhj
 q3LA8BlcubZqpTNhJQsdeYAOT5vEHceQv2sDobAeWJdxqoacY3Awbdj4zXjqFOB5GDqY
 3byA==
X-Gm-Message-State: APjAAAXLHKSSoEPyB5Rfbby0yv9TYI1hAIsOjxzl/wTZeGlyG2qp8ua2
 WPbkOKx+TECmpTOctjtM3+dnww==
X-Google-Smtp-Source: APXvYqzl0KnFp0QeZi0ICQeTNpCU0pxjq2w6jjf6JCLmPyuwntCGMq7SBLTLQ8U00/IlVqC313JpjQ==
X-Received: by 2002:a63:6585:: with SMTP id z127mr7132514pgb.330.1572040500677; 
 Fri, 25 Oct 2019 14:55:00 -0700 (PDT)
Received: from apsdesk.mtv.corp.google.com
 ([2620:15c:202:1:e09a:8d06:a338:aafb])
 by smtp.gmail.com with ESMTPSA id y80sm3815110pfc.30.2019.10.25.14.54.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 14:55:00 -0700 (PDT)
From: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
To: Johan Hedberg <johan.hedberg@gmail.com>,
 Marcel Holtmann <marcel@holtmann.org>
Subject: [PATCH 0/3] ARM: dts: rockchip: Use hci_bcm driver for bcm43540 on
 Veyron devices
Date: Fri, 25 Oct 2019 14:54:25 -0700
Message-Id: <20191025215428.31607-1-abhishekpandit@chromium.org>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_145502_106453_B5E374C7 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 netdev@vger.kernel.org, dianders@chromium.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
 Mark Rutland <mark.rutland@arm.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


This patch series enables using the Broadcom HCI UART driver with the
BCM43540 Wi-Fi + Bluetooth chip. This chip is used on a RK3288 based
board (Veyron) and these changes have been tested on the Minnie variant
of the board (i.e. rk3288-veyron-minnie.dts).



Abhishek Pandit-Subedi (3):
  Bluetooth: hci_bcm: Add compatible string for BCM43540
  dt-bindings: net: broadcom-bluetooth: Add BCM43540 compatible string
  ARM: dts: rockchip: Add brcm bluetooth module on uart0

 .../bindings/net/broadcom-bluetooth.txt       |  1 +
 arch/arm/boot/dts/rk3288-veyron.dtsi          | 31 +++++--------------
 drivers/bluetooth/hci_bcm.c                   |  1 +
 3 files changed, 9 insertions(+), 24 deletions(-)

-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
