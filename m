Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AEC1E8B1B
	for <lists+linux-rockchip@lfdr.de>; Sat, 30 May 2020 00:16:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2UgLL+M+0ngp03u7CnM1/R0Bhn0u3cbZN2HOIIY5Eis=; b=Epwu+Jk1W3fZJKQQpJJpK8odJ
	vg17QgOAPSBOQ3bfhyY/jWdB5XdAEzBO2Z88aIv1mrqx92oN7zu6nifmb8Lv1/OWpaq20usZxsIev
	5fdnKNxpdZ0RC/3XD66FD5VP2Umzmc3tbntGeq/skUErB5sY0C+7QIzhK/3oHpY1qYEE6SBLpK//W
	ylHwslsDyEic5QeQvEpjWz8sVMEjW/gNxBLjoX27x+cXDs957L5djzvGKVX+57qA0quiV67Ord5+F
	eo+nM/3ewVDI1yrkA+Mz7pW4SfruWUGXWyPhE4DJhZfX5/XqLGkQOMWiQJEvCnT8M5d3FTEqe4gXZ
	eL6377amw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jenJ1-00035M-8z; Fri, 29 May 2020 22:16:47 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jenIy-00033a-Bh
 for linux-rockchip@bombadil.infradead.org; Fri, 29 May 2020 22:16:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:In-Reply-To:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=RyWRgA39MpCS4B1s1Q6dcjnQ39Nmyes8pkIQMz0S9CE=; b=fRVbYDgul//dtAywOCooXlTzBe
 HIhZmEWJQKxDyrAGunbAXbcR34kN9ZqjirGh+MKeshwPWpA7EkIoDYqGA3KsoyLgPx/+cem7ZJgPv
 pCvXDBmFrLUAYyw2646ospNL5lbJYbsIz7ZShK3ocDqXSSiwPWb0UVIBhnsIW5FrlUk6rApXFF0Er
 S0kstB8iMNfen7LYHLH9D8FEoCyOScMZlNA9RirABkP7VAlnNoinPHEhu+Tv1j2irEAV9eLSUV/Zo
 KNhxzMuNFX1zGwcM6UpXFVhcXl23jIiwoLt9dLewEa1GdvverAYBMSrEL8q//B3ttPqAOc/zuF0/0
 mvuPxfxw==;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jenIw-00085A-PV
 for linux-rockchip@lists.infradead.org; Fri, 29 May 2020 22:16:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590790592;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:in-reply-to:in-reply-to:  references:references;
 bh=RyWRgA39MpCS4B1s1Q6dcjnQ39Nmyes8pkIQMz0S9CE=;
 b=HyEydRMZTLGrdMZrhync1yjF80RTDrg5tllQ8JcDCwKF5HM1gHuL3kxdX10bl+DQhabkyB
 EDrpC3oDmktZI9oHoT+zfWbnRFMzHocyzPSUi8rG5h98NqPmqzMk5OClHcNQUB2gyoJsoz
 lvtDt5pyQRDGMJtCC3WFSCxzW0AhSkg=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590790602;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:in-reply-to:in-reply-to:  references:references;
 bh=RyWRgA39MpCS4B1s1Q6dcjnQ39Nmyes8pkIQMz0S9CE=;
 b=TKgWHHsgGCRPy6mIli0Wq7DE5wkUkSdjM+GyB7n9BkN6TmE8hycIcKG6qwUev9uGjvqIg9
 09iTKw2eJRAZkXE7vzLCMWDMtHxkPxB2iV+srMRcWdvXgkZ5i2RlNgAbMFfPJmAWn61voF
 SBLFLRNT52KQXJJz0qpc/+IxcIsFViM=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-508-0yudW9ElNUK10UQGl_nVag-1; Fri, 29 May 2020 18:16:26 -0400
X-MC-Unique: 0yudW9ElNUK10UQGl_nVag-1
Received: by mail-qt1-f197.google.com with SMTP id x6so4219646qts.3
 for <linux-rockchip@lists.infradead.org>; Fri, 29 May 2020 15:16:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=RyWRgA39MpCS4B1s1Q6dcjnQ39Nmyes8pkIQMz0S9CE=;
 b=j3hYF/TLzOyb0iZ3bUSvdjRjA3Hzwp2IlJLJt7Uoqw258BKRujgnqvqik8gvtkpjaA
 xbvPhaL1cjxcgAAkW3xaG4gG7JW5Dj/GjdT9HcOObDdZV23jW6JgGEtPFk9mmjCc7QSr
 JaxDLdksIcn9TSsB1qNsO0qASoX6JDn+rjjc21BhFcGKuNQ43mW3lv9JMKthAjG8p7zM
 alY4U2TCiwbbwxmE5Dv+tOAAg/e7JdqXL+q2DHFlUOGK+YQiyn15DBehPaZVnHjVVX6R
 ezYklcUGKLuJ9x1Vs5Lpz6ePG5KFozmfNVXLKXlGnLiNgTUjoFFcCvZsH9tQYM/pj3xs
 cE3Q==
X-Gm-Message-State: AOAM532pvOlPnrImQZ3w4kUTleerJ6zn+kBKBZYod46g7bb0qyCmLanv
 6Xd92tk38cJJBDrDOGEso3fOxe/Arf+rmpp3wENu9VZBX5bl06laAw44dXKLQlMYbFKK6Jcy/Jh
 MKIfi/KnW6ykqD6OdRsMf3PGc4IGRORlI
X-Received: by 2002:a37:6188:: with SMTP id v130mr4562271qkb.138.1590790585935; 
 Fri, 29 May 2020 15:16:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw51w0cnvYWh4WhXmhdM31BK730VJAQnizGJEPYNr8qH289FZOtd/33h3DF8AwAKbkwmoOGzg==
X-Received: by 2002:a37:6188:: with SMTP id v130mr4562246qkb.138.1590790585671; 
 Fri, 29 May 2020 15:16:25 -0700 (PDT)
Received: from localhost (ip70-163-223-149.ph.ph.cox.net. [70.163.223.149])
 by smtp.gmail.com with ESMTPSA id w13sm8244813qkb.91.2020.05.29.15.16.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 15:16:24 -0700 (PDT)
Date: Fri, 29 May 2020 15:16:23 -0700
From: Jerry Snitselaar <jsnitsel@redhat.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH v2 00/33] iommu: Move iommu_group setup to IOMMU core code
Message-ID: <20200529221623.qc6twmpzryh7nkvb@cantor>
Mail-Followup-To: Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>,
 Lu Baolu <baolu.lu@linux.intel.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Rob Clark <robdclark@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 linux-rockchip@lists.infradead.org,
 iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org
References: <20200414131542.25608-1-joro@8bytes.org>
MIME-Version: 1.0
In-Reply-To: <20200414131542.25608-1-joro@8bytes.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: Jerry Snitselaar <jsnitsel@redhat.com>
Cc: Heiko Stuebner <heiko@sntech.de>, virtualization@lists.linux-foundation.org,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Will Deacon <will@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, iommu@lists.linux-foundation.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 linux-s390@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-kernel@vger.kernel.org,
 Rob Clark <robdclark@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Lu Baolu <baolu.lu@linux.intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue Apr 14 20, Joerg Roedel wrote:
>Hi,
>
>here is the second version of this patch-set. The first version with
>some more introductory text can be found here:
>
>	https://lore.kernel.org/lkml/20200407183742.4344-1-joro@8bytes.org/
>
>Changes v1->v2:
>
>	* Rebased to v5.7-rc1
>
>	* Re-wrote the arm-smmu changes as suggested by Robin Murphy
>
>	* Re-worked the Exynos patches to hopefully not break the
>	  driver anymore
>
>	* Fixed a missing mutex_unlock() reported by Marek Szyprowski,
>	  thanks for that.
>
>There is also a git-branch available with these patches applied:
>
>	https://git.kernel.org/pub/scm/linux/kernel/git/joro/linux.git/log/?h=iommu-probe-device-v2
>
>Please review.
>
>Thanks,
>
>	Joerg
>
>Joerg Roedel (32):
>  iommu: Move default domain allocation to separate function
>  iommu/amd: Implement iommu_ops->def_domain_type call-back
>  iommu/vt-d: Wire up iommu_ops->def_domain_type
>  iommu/amd: Remove dma_mask check from check_device()
>  iommu/amd: Return -ENODEV in add_device when device is not handled by
>    IOMMU
>  iommu: Add probe_device() and remove_device() call-backs
>  iommu: Move default domain allocation to iommu_probe_device()
>  iommu: Keep a list of allocated groups in __iommu_probe_device()
>  iommu: Move new probe_device path to separate function
>  iommu: Split off default domain allocation from group assignment
>  iommu: Move iommu_group_create_direct_mappings() out of
>    iommu_group_add_device()
>  iommu: Export bus_iommu_probe() and make is safe for re-probing
>  iommu/amd: Remove dev_data->passthrough
>  iommu/amd: Convert to probe/release_device() call-backs
>  iommu/vt-d: Convert to probe/release_device() call-backs
>  iommu/arm-smmu: Convert to probe/release_device() call-backs
>  iommu/pamu: Convert to probe/release_device() call-backs
>  iommu/s390: Convert to probe/release_device() call-backs
>  iommu/virtio: Convert to probe/release_device() call-backs
>  iommu/msm: Convert to probe/release_device() call-backs
>  iommu/mediatek: Convert to probe/release_device() call-backs
>  iommu/mediatek-v1 Convert to probe/release_device() call-backs
>  iommu/qcom: Convert to probe/release_device() call-backs
>  iommu/rockchip: Convert to probe/release_device() call-backs
>  iommu/tegra: Convert to probe/release_device() call-backs
>  iommu/renesas: Convert to probe/release_device() call-backs
>  iommu/omap: Remove orphan_dev tracking
>  iommu/omap: Convert to probe/release_device() call-backs
>  iommu/exynos: Use first SYSMMU in controllers list for IOMMU core
>  iommu/exynos: Convert to probe/release_device() call-backs
>  iommu: Remove add_device()/remove_device() code-paths
>  iommu: Unexport iommu_group_get_for_dev()
>
>Sai Praneeth Prakhya (1):
>  iommu: Add def_domain_type() callback in iommu_ops
>
> drivers/iommu/amd_iommu.c       |  97 ++++----
> drivers/iommu/amd_iommu_types.h |   1 -
> drivers/iommu/arm-smmu-v3.c     |  38 +--
> drivers/iommu/arm-smmu.c        |  39 ++--
> drivers/iommu/exynos-iommu.c    |  24 +-
> drivers/iommu/fsl_pamu_domain.c |  22 +-
> drivers/iommu/intel-iommu.c     |  68 +-----
> drivers/iommu/iommu.c           | 393 +++++++++++++++++++++++++-------
> drivers/iommu/ipmmu-vmsa.c      |  60 ++---
> drivers/iommu/msm_iommu.c       |  34 +--
> drivers/iommu/mtk_iommu.c       |  24 +-
> drivers/iommu/mtk_iommu_v1.c    |  50 ++--
> drivers/iommu/omap-iommu.c      |  99 ++------
> drivers/iommu/qcom_iommu.c      |  24 +-
> drivers/iommu/rockchip-iommu.c  |  26 +--
> drivers/iommu/s390-iommu.c      |  22 +-
> drivers/iommu/tegra-gart.c      |  24 +-
> drivers/iommu/tegra-smmu.c      |  31 +--
> drivers/iommu/virtio-iommu.c    |  41 +---
> include/linux/iommu.h           |  21 +-
> 20 files changed, 533 insertions(+), 605 deletions(-)
>
>-- 
>2.17.1
>
>_______________________________________________
>iommu mailing list
>iommu@lists.linux-foundation.org
>https://lists.linuxfoundation.org/mailman/listinfo/iommu
>

Hi Joerg,

With this patchset, I have an epyc system where if I boot with
iommu=nopt and force a dump I will see some io page faults for a nic
on the system. The vmcore is harvested and the system reboots. I
haven't reproduced it on other systems yet, but without the patchset I
don't see the io page faults during the kdump.

Regards,
Jerry


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
