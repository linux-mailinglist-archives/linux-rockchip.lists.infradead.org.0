Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD8544F58
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 00:40:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Re2aHIdwUM+825kjP9lQzDgmwUSLazgk0HQGlLxYQrU=; b=CQlxjV682BORfd
	kHgkgKmMPbNUnLTOUY08FeIL2feI2mvqb5KgGu9RCOaggtMGN0MYW8XwIWb5VSV0rzb/hbHlMDAqf
	8VE7863AnoQ65iD9QGVSh4hjEfO/BiqhGHpVnyVAYNOpXBSOlv9BxkVH4tu2DFecUfQQm5jrOYPvl
	Nz5quESKuvSotoCbNW9QJ1eFNByhMmzPrYJLRuwYdZgSqCP2vYP4aZ6IOIbvvdFZ7pK2yBuvyRLm2
	ARrhF8iduF7/VpiwkFmb5NvdEZ2Nyt9kZhqjA5pm27fIr7CV3qk5yTE1ZN9gqy3xqTowgxhhrQtZF
	JKg76A4ZPs4sd1z6MduQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbYNz-0002oZ-VW; Thu, 13 Jun 2019 22:39:59 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbYNP-0002N6-Jg
 for linux-rockchip@lists.infradead.org; Thu, 13 Jun 2019 22:39:27 +0000
Received: by mail-ed1-x543.google.com with SMTP id k8so461229edr.11
 for <linux-rockchip@lists.infradead.org>; Thu, 13 Jun 2019 15:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EcPKIz/cx9BuSCY4h5Jds9dddvg3WP5b4PjiRQaCMNk=;
 b=Q7YqbkWKog9myMLVKuEgSGV/QhFlPY8pqvqD3ElQJa5O+VupGahQ/2KWdmD42UChZU
 wPmlxSspSryqNb5xCB8JLtGZX6vRCzXM8xY7AmfA6QICBXISxNprKepOzIgPRJ0PmKvq
 lwOf3L9Aeaw9au+GkaXXU5HxIJQ1vxFfownqyJtqMjhF5SRbY4FdMVVh7ZLQ7hbQYj3Q
 iidXZkXXf0qlsVYk9WxwAFcMHH4IP3leZkOYhpAmRlGBv4K+6lmx2ZeQRojQOmlcq9FK
 mitiCFQNPcpZ74hbmAblxvrrqQFu7g6p6HGZuZiNBMXyyAAw52tc7SZA4bY0a5yZBSlR
 Rxmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EcPKIz/cx9BuSCY4h5Jds9dddvg3WP5b4PjiRQaCMNk=;
 b=puzOSsEx732qOtLJKwqYVhY263OPB5Bbrgc3frfC/gQEA5TumVj+m6BQEkCebzGla4
 VF/Vhmc2svaGpMdz4CbB7d6i/ApJCEN9STlX5iRTEpgae+Z38l4XzSiPmdLoiwI5rGnj
 vYYOezYet2nZ3Nw4XRHcqmUhY5c8WkPe1sXDO1npGJ7FwJu48tP7If/lDK20P/Pv55vx
 p6q7udrqtL+jfvFUYVb3hE7l+vkesJWohJJBB40wzmJkst+xl1yT0ybshGIt5yRX/zxQ
 +++QMj+yrubZR/cIdbVaVibPx1J6YHQ8NDbXFR9PDT6r6CFPe8ZkNXe6q+HNh3nkDlxi
 MS/Q==
X-Gm-Message-State: APjAAAUU9Pa5deZ7YpcrqCxuvHuvb3N8MZ2e2UeO9soC3alGokFPSLzI
 TuUu4lcy5l5nvMEoBx/eLQ8MQw==
X-Google-Smtp-Source: APXvYqznp1hHyw5PYwIoh2oTLD6q+OMGquaY21fb63SmdivVnsFdvFIZnOzRxPqoidZqkL4RdKrnQw==
X-Received: by 2002:a50:bdc2:: with SMTP id z2mr97240407edh.245.1560465555952; 
 Thu, 13 Jun 2019 15:39:15 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:a0:bc00:8042:d435:a754:1f22])
 by smtp.googlemail.com with ESMTPSA id
 s16sm216522eji.27.2019.06.13.15.39.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 15:39:14 -0700 (PDT)
From: Tom Murphy <murphyt7@tcd.ie>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v4 0/5] iommu/amd: Convert the AMD iommu driver to the
 dma-iommu api
Date: Thu, 13 Jun 2019 23:38:55 +0100
Message-Id: <20190613223901.9523-1-murphyt7@tcd.ie>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_153923_645388_9B9834FB 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>, Will Deacon <will.deacon@arm.com>,
 virtualization@lists.linux-foundation.org,
 David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, Tom Murphy <murphyt7@tcd.ie>,
 Rob Clark <robdclark@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Convert the AMD iommu driver to the dma-iommu api. Remove the iova
handling and reserve region code from the AMD iommu driver.

Change-log:
V4:
-Rebase on top of linux-next
-Split the removing of the unnecessary locking in the amd iommu driver into a seperate patch
-refactor the "iommu/dma-iommu: Handle deferred devices" patch and address comments
v3:
-rename dma_limit to dma_mask
-exit handle_deferred_device early if (!is_kdump_kernel())
-remove pointless calls to handle_deferred_device
v2:
-Rebase on top of this series:
 http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/dma-iommu-ops.3
-Add a gfp_t parameter to the iommu_ops::map function.
-Made use of the reserve region code inside the dma-iommu api

Tom Murphy (5):
  iommu/amd: Remove unnecessary locking from AMD iommu driver
  iommu: Add gfp parameter to iommu_ops::map
  iommu/dma-iommu: Handle deferred devices
  iommu/dma-iommu: Use the dev->coherent_dma_mask
  iommu/amd: Convert AMD iommu driver to the dma-iommu api

 drivers/iommu/Kconfig           |   1 +
 drivers/iommu/amd_iommu.c       | 690 ++++----------------------------
 drivers/iommu/amd_iommu_types.h |   1 -
 drivers/iommu/arm-smmu-v3.c     |   2 +-
 drivers/iommu/arm-smmu.c        |   2 +-
 drivers/iommu/dma-iommu.c       |  45 ++-
 drivers/iommu/exynos-iommu.c    |   2 +-
 drivers/iommu/intel-iommu.c     |   2 +-
 drivers/iommu/iommu.c           |  43 +-
 drivers/iommu/ipmmu-vmsa.c      |   2 +-
 drivers/iommu/msm_iommu.c       |   2 +-
 drivers/iommu/mtk_iommu.c       |   2 +-
 drivers/iommu/mtk_iommu_v1.c    |   2 +-
 drivers/iommu/omap-iommu.c      |   2 +-
 drivers/iommu/qcom_iommu.c      |   2 +-
 drivers/iommu/rockchip-iommu.c  |   2 +-
 drivers/iommu/s390-iommu.c      |   2 +-
 drivers/iommu/tegra-gart.c      |   2 +-
 drivers/iommu/tegra-smmu.c      |   2 +-
 drivers/iommu/virtio-iommu.c    |   2 +-
 include/linux/iommu.h           |  21 +-
 21 files changed, 179 insertions(+), 652 deletions(-)

-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
