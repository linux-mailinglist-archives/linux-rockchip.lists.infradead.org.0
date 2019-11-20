Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D55103FA9
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 Nov 2019 16:45:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SHYwNUl2KO1DWi16QmV66tIBngv0OcZIcTKVxVoxSig=; b=DHg
	yUQJzUneih5MBOgnXS/CEJEaVOILMt4VA5EC7kKJ424BVExTnBFmj9g7zNmxpEEJyKBQXABCRIWm6
	PvMkdZd+qzPtPFc9FUz7Fo4N7XpaD03247mWAIVsxOe6TM9CuEP0FIAl7i79jYO0AMfcjUkKOdiSO
	7v5Jh34MQ6gs7zr8kuvXADfvi6Eh/P1y2Pk+QTWMP12wNIvPlWYJ+WPW3LWcc2/wfeypHD9lP01gK
	SamoW90BKFN1Z+NPTb/JEHdeMt78JGfOLDpNVy9QgGor8eSzowoPFfgcaYK7b7HAhwYbP+WR9BPRP
	HLlCaS/cVnFGNNisBGFn9EOsLo/5GWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXSAs-00032B-3G; Wed, 20 Nov 2019 15:45:46 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXSAa-0002mx-Pj
 for linux-rockchip@lists.infradead.org; Wed, 20 Nov 2019 15:45:31 +0000
Received: by mail-pl1-x641.google.com with SMTP id q18so10301144pls.5
 for <linux-rockchip@lists.infradead.org>; Wed, 20 Nov 2019 07:45:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=p1oQ2/ApuLBZfJjzJxbReeEfweEJSenuiYCAOd26jOY=;
 b=sx33veXRT/WG71DXlr2LQUN/kHNNUnPt88phqsfsYVlAgZGxBvXbK0fqchczHwjND/
 1EGPyi7lDPIkCrm+8jV6C6faKYzD2LwCZtawDM48VNil5JrKDFYq/j92RN3POFavam4Q
 3M+Tutp1fhrWLVf5po3HELVk4FWWjzopaxpiuFaSbEUlC19y3zCMMjRiDRAIjNgB3Vs4
 BX5kbPUQ3ld73hsLb3GuVJmcROm71Vb4Y1uWFMHNmbnhMSz53nFcT9/CBimpRqCrj33I
 3/U1bD9M8Kdjx6Vb62TMyRxIX5ab6z88+AMp21kU32iV1Yznt8pQb9jqRWu7JaM6XwcU
 sQwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=p1oQ2/ApuLBZfJjzJxbReeEfweEJSenuiYCAOd26jOY=;
 b=tZmROjJ4p9PPVCZZ/NsUWlWXRc+72DGkqjobB9vdfyRIMqTPP0TpPLsHNyAFU8Fql3
 Y/JaLjKE7QCMb105VVTsye0zJ7Dso+xhMMFFwqUah/YD4/UO7bFE9EWqDoxJ8ETGQ2cI
 0N+GR0waTi6bKETjNeTpNldlsa0x5ytbhrsWWIWaAB5IkDGN1vdzVZjkAhNc9nRzF5FS
 Vh25x1//c0YC1A0+DfkO5CUNes3kNynhLajI+xzWyqSym2Pxtnj2XTTd/3/3ZQVnv+Bs
 rK3XtuZKntlJgfjnzLJnzwsymeYbcSXuTcTkRcIv2qWWqswFAU3PeTkzqF+SuCDO29wA
 /uog==
X-Gm-Message-State: APjAAAU8iDFxasDEVDsBIyFUbtyzq0t5XY34uPsCqYo+K6iu1vr5z1kM
 0o6UGoGfXGFLslZZuFWxyaypdA==
X-Google-Smtp-Source: APXvYqxogLp6gc4NSWr1kl81LqhVaiFMVmTnBYfJTGwLUMofS4/vu9+JzshkluAWJdxeFvOnWyJZAQ==
X-Received: by 2002:a17:90a:bb82:: with SMTP id
 v2mr5064560pjr.62.1574264727478; 
 Wed, 20 Nov 2019 07:45:27 -0800 (PST)
Received: from localhost ([14.96.110.98])
 by smtp.gmail.com with ESMTPSA id q41sm7643756pja.20.2019.11.20.07.45.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 20 Nov 2019 07:45:26 -0800 (PST)
From: Amit Kucheria <amit.kucheria@linaro.org>
To: linux-kernel@vger.kernel.org, edubezval@gmail.com,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Guillaume La Roque <glaroque@baylibre.com>,
 Heiko Stuebner <heiko@sntech.de>, Javi Merino <javi.merino@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jun Nie <jun.nie@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Zhang Rui <rui.zhang@intel.com>
Subject: [PATCH v2 00/11] thermal: clean up output of make W=1 
Date: Wed, 20 Nov 2019 21:15:09 +0530
Message-Id: <cover.1574242756.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_074528_852652_FDAC9C14 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Cleanup output of make W=1 inside drivers/thermal. This should allow us to
focus on real issues that tend to get lost in the noise much better.

There is no functional change. This series was generate on top of
linux-next from 20191119.

Changes since v1:
- Add review tags
- Fixed up commit message for devfreq_cooling and samsung changes

Regards,
Amit


Amit Kucheria (11):
  thermal: of-thermal: Appease the kernel-doc deity
  thermal: cpu_cooling: Appease the kernel-doc deity
  thermal: step_wise: Appease the kernel-doc deity
  thermal: devfreq_cooling: Appease the kernel-doc deity
  thermal: max77620: Appease the kernel-doc deity
  thermal: mediatek: Appease the kernel-doc deity
  thermal: rockchip: Appease the kernel-doc deity
  thermal: samsung: Appease the kernel-doc deity
  thermal: tegra: Appease the kernel-doc deity
  thermal: amlogic: Appease the kernel-doc deity
  thermal: zx2967: Appease the kernel-doc deity

 drivers/thermal/amlogic_thermal.c    |  6 +++++-
 drivers/thermal/cpu_cooling.c        |  1 +
 drivers/thermal/devfreq_cooling.c    |  3 ++-
 drivers/thermal/fair_share.c         |  4 ++--
 drivers/thermal/gov_bang_bang.c      |  4 ++--
 drivers/thermal/max77620_thermal.c   |  2 +-
 drivers/thermal/mtk_thermal.c        | 12 ++++++------
 drivers/thermal/of-thermal.c         |  2 +-
 drivers/thermal/rockchip_thermal.c   | 22 ++++++++++++++++------
 drivers/thermal/samsung/exynos_tmu.c |  5 ++++-
 drivers/thermal/step_wise.c          |  4 ++--
 drivers/thermal/tegra/soctherm.c     | 15 +++++++++++++--
 drivers/thermal/user_space.c         |  4 ++--
 drivers/thermal/zx2967_thermal.c     |  1 +
 14 files changed, 58 insertions(+), 27 deletions(-)

-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
