Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CBB1038E3
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 Nov 2019 12:41:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=70pxBdIKMHivFJVK6fkYO9sYD9TUIoGM+nhpH8NCNsI=; b=nBtIyuo5zz+eJf
	EYIual7cVMNW2tdflpwawO+WGC7DMWhLz9czbif8mCPDDuRdxTuq41TAebRlyM/vGICgOSZN82z0k
	Oq/Dlqisk5kq8r22K0pcegi1c5pnZLRYO0IKnONQEzE5luGBDhpQvh6RHaYNfZp1ibAV53WP7nMD+
	YsoaFGx8L8NIRVwrpqakvZTMsFEhusZq29AG9c9ANLSecdKyRjDHPvsRlukdKDELh0xpGiK5xJ5jG
	nlY3v3q5tkD0VWqI2KbRw+1eNPann7LpyhBqi6G1BdbYclXbVEmotxRB6OEy3Oq5v0ijV/wcn1JEb
	7OTWXrcEgWuD6ve+XIRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXOM3-0002nS-D4; Wed, 20 Nov 2019 11:41:03 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOLs-0002e6-R6
 for linux-rockchip@lists.infradead.org; Wed, 20 Nov 2019 11:40:54 +0000
Received: by mail-pf1-x444.google.com with SMTP id n13so14113507pff.1
 for <linux-rockchip@lists.infradead.org>; Wed, 20 Nov 2019 03:40:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EPJkuGz+JSjzJ50nZ26ldWX3k6k/FLUFZmlBSMSkXIM=;
 b=GtZuKo/YXhZDfFx2Fg6eTUxxwhtdrqfhNSiftIvxAboMj7Abz8xhbA6gApZCbFjKhx
 6++Cl8pLFZDZ+HgBc2POt6G2l1ZCWOYmPlqQwsubN7RSEa7EtG3XmIAtld4tulVCrEBP
 oSBFwZNYGG/AP89b5q2JMQOwDl/CE1NVR36xE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EPJkuGz+JSjzJ50nZ26ldWX3k6k/FLUFZmlBSMSkXIM=;
 b=RRJyz3Pj3A8syumkSEdfZPFkjAhNiOJQsiX4HPRQR6lU9S2R2rbrvCXri5AO7EZOBR
 c8zTN0dweas5WsarKGOeSwTzBpPA5w1m1BM2s1lYLY0B4eQU9KMoz90f/8PvjjpF/W1g
 CAc4jtySUEEKUimBR912MThcLDmTk6k8HnIs16Oy1E1a3FFYuSAsQornei5G1P6HGAJ5
 5TY0JbZY8LzdiMGM7u9+hmLmxCGXmkxTGMZfLcue4eYOhJTttC+FHvuek3Nq3vF1BgHA
 G6unYlW4tK8hDVB0BiBI+SFyJc7cXxG4NZqHKEbGJmJLRcxYy93vd7NxI5jq+RuwKnQu
 Rasg==
X-Gm-Message-State: APjAAAUwTXMUBhn15WrZpKPtiDgKygTMgD5L4eqUuyzNDMzng7umGnmg
 BBSknWQIuQ9BMQo4TTCEP/MzGQ==
X-Google-Smtp-Source: APXvYqwEZ56JDZTPJcrZRd6NoxeRu3wg9RK57Xc3CqoGcBA0SsoP47nnmr5ufV5AVYg+p5xqSb8IRg==
X-Received: by 2002:a62:e818:: with SMTP id c24mr3459856pfi.125.1574250051807; 
 Wed, 20 Nov 2019 03:40:51 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id h185sm13492850pgc.87.2019.11.20.03.40.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 03:40:50 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 0/5] arm64: dts: rockchip: Add Rock Pi N10 support
Date: Wed, 20 Nov 2019 17:09:18 +0530
Message-Id: <20191120113923.11685-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_034053_060279_3C7E2D92 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Unlike, other Rock PI boards from radxa, Rock Pi N10 SBC is based
on SOM + Carrier board combination.

Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
- VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

This series add initial support for Rock Pi N10.

patch 0001: dt-bindings for VMARC RK3399Pro SOM

patch 0002: VMARC RK3399Pro SOM dtsi support

patch 0003: dt-bindings for Rock Pi N10

patch 0004: Radxa carrier board dtsi support

patch 0005: Rock Pi N10 dts support

Tested basic peripherals and will all more in future patches.

Any inputs?
Jagan.

Jagan Teki (5):
  dt-bindings: arm: rockchip: Add VMARC RK3399Pro SOM binding
  arm64: dts: rockchip: Add VMARC RK3399Pro SOM initial support
  dt-bindings: arm: rockchip: Add Rock Pi N10 binding
  ARM: dts: rockchip: Add Radxa Carrier board
  arm64: dts: rockchip: Add Radxa Rock Pi N10 initial support

 .../devicetree/bindings/arm/rockchip.yaml     |  10 +
 .../boot/dts/rockchip-radxa-carrierboard.dtsi |  81 +++++
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3399pro-rock-pi-n10.dts    |  17 +
 .../dts/rockchip/rk3399pro-vmarc-som.dtsi     | 339 ++++++++++++++++++
 5 files changed, 448 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip-radxa-carrierboard.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
