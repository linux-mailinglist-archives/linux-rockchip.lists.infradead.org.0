Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFF71EC034
	for <lists+linux-rockchip@lfdr.de>; Tue,  2 Jun 2020 18:38:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ktz9sSU/jE0wZQ7GMjqoGBfYFWvPXOUNDQ6RdsOHQeU=; b=oLYjsH3zImeZxCGOo7BkRv2FG
	eGPSx8LwqZCKC/Wt/igfmoelP9hFpcq9ftvUcaug0q1V8uYC81wkfFN6dBPzsBTuDzxG48hZs5/hY
	4eVGzxklbqunoHI5ZS+jE2rjNd2Gk/TVT6UQaVmbefEEqI0qdpnZD4PX0omH7JwjuNVa1nxn/QCHo
	RTkBiEM7omTu6pVnRMZoGWH1nwNqvij6bfvCXZrRKKrg+SJ1Z/ONmT6p67fGaTu9CKcBro/dnyH4c
	O+eFoFe7IJiaZ0uZfgtfja9/slqzJYd0wyxyWZPE35wdtvXJe2roHUzVTQRG9dlwFRfoVmtdsUZk9
	gYI22K+eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg9vj-0008Ov-Mi; Tue, 02 Jun 2020 16:38:23 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg9vf-0008NR-0J
 for linux-rockchip@lists.infradead.org; Tue, 02 Jun 2020 16:38:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591115896;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:in-reply-to:in-reply-to:  references:references;
 bh=hHqD35umcQO2huEjb9WL/Ckh3jB+GYgIq0lk1r/iSMI=;
 b=ReaM5w19lpFOo9+RfsXq7dFeZ9bWvhu14kG2nAWplJp0ePFumtaL4uls9p1uPD6u/j3VBa
 vh6+j4NPJujFXrqqkiiaCLBFCnCcGmZ5Ltgprb00h8L31BJ8WLg15qHR8OU5zwECz5WUm9
 /pLgzynC4eaUES6YKgX5jfe3cMBhDYg=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-41-vwUGo40-Oey0CWWcErpDIg-1; Tue, 02 Jun 2020 12:38:10 -0400
X-MC-Unique: vwUGo40-Oey0CWWcErpDIg-1
Received: by mail-qv1-f69.google.com with SMTP id s20so4093277qvw.12
 for <linux-rockchip@lists.infradead.org>; Tue, 02 Jun 2020 09:38:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=hHqD35umcQO2huEjb9WL/Ckh3jB+GYgIq0lk1r/iSMI=;
 b=lQwtaT8yruGVC/CZT6+nLoZ09kWxXNHvZS0ozpvXkIuvukr3YBfcPaS3ol0HxEkz/w
 EIeZi2M03pdm+BNmhH8xJl8RObERKmqk3gKBn2UieKAz10IUX7f5zEQ0kkI3rjVu75jN
 OKeEOipCpooj4gu0UhpQPWUv0jCGFw4m6lanCVIgWEkuyJJDEwwU1lQT2+ih1mXtADg4
 9eGoEAn6xIolhLs652apZ/j6FNwxNvtHcYdAaL3SL07z6f5Cfg+JB112Oe3NYdXQ2UW+
 YZgj5xmUyeatJjj/rkD13vSdECw97jwABBoe8jYV29pIzVzfRQOolLvbsj8WdYU1ZT8F
 J4RA==
X-Gm-Message-State: AOAM531qP8erfitFFwyhTaVrlDTuWkiI121GBsc8tNs42eyvbywTJ8JF
 mzG9K5u/FHplidctyPG039+aREMepk3WuPlhFJIXAGppeF0CqYYHAml1uMV6f1yWqAy1rPvdpOz
 xn67h3wiFvQJOWWyorwL/izfT7k3m27Sm
X-Received: by 2002:a37:e205:: with SMTP id g5mr26245744qki.451.1591115889883; 
 Tue, 02 Jun 2020 09:38:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxEHwB8sZ6GJqYFOX4Dc4L1exr5Cive5nf+jzBOew3IuxjQdOjd9lAvq/gnZam2w9pqVYc4MQ==
X-Received: by 2002:a37:e205:: with SMTP id g5mr26245713qki.451.1591115889616; 
 Tue, 02 Jun 2020 09:38:09 -0700 (PDT)
Received: from localhost (ip70-163-223-149.ph.ph.cox.net. [70.163.223.149])
 by smtp.gmail.com with ESMTPSA id 70sm2863201qkk.10.2020.06.02.09.38.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 09:38:08 -0700 (PDT)
Date: Tue, 2 Jun 2020 09:38:06 -0700
From: Jerry Snitselaar <jsnitsel@redhat.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH v2 00/33] iommu: Move iommu_group setup to IOMMU core code
Message-ID: <20200602163806.o5dpj2tpemwdzyiw@cantor>
Mail-Followup-To: Joerg Roedel <joro@8bytes.org>,
 Lu Baolu <baolu.lu@linux.intel.com>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>,
 Andy Gross <agross@kernel.org>,
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
 <20200529221623.qc6twmpzryh7nkvb@cantor>
 <20200601104240.7f5xhz7gooqhaq4n@cantor>
 <47711845-98ee-95b8-aa95-423a36ed9741@linux.intel.com>
 <20200602000236.j4m3jvluzdhjngdc@cantor>
 <20200602142312.GJ14598@8bytes.org>
MIME-Version: 1.0
In-Reply-To: <20200602142312.GJ14598@8bytes.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_093819_128164_AB2BDB97 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Tue Jun 02 20, Joerg Roedel wrote:
>Hi Jerry,
>
>On Mon, Jun 01, 2020 at 05:02:36PM -0700, Jerry Snitselaar wrote:
>>
>> Yeah, that will solve the panic.
>>
>
>If you still see the kdump faults, can you please try with the attached
>diff? I was not able to reproduce them in my setup.
>
>Regards,
>
>	Joerg
>

I have another hp proliant server now, and reproduced. I will have the
patch below tested shortly. Minor change, I switched group->domain to
domain since group isn't an argument, and *data being passed in comes
from group->domain anyways.

>diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
>index b5ea203f6c68..5a6d509f72b6 100644
>--- a/drivers/iommu/iommu.c
>+++ b/drivers/iommu/iommu.c
>@@ -1680,8 +1680,12 @@ static void probe_alloc_default_domain(struct bus_type *bus,
> static int iommu_group_do_dma_attach(struct device *dev, void *data)
> {
> 	struct iommu_domain *domain = data;
>+	int ret = 0;
>
>-	return __iommu_attach_device(domain, dev);
>+	if (!iommu_is_attach_deferred(group->domain, dev))
>+		ret = __iommu_attach_device(group->domain, dev);
>+
>+	return ret;
> }
>
> static int __iommu_group_dma_attach(struct iommu_group *group)
>_______________________________________________
>iommu mailing list
>iommu@lists.linux-foundation.org
>https://lists.linuxfoundation.org/mailman/listinfo/iommu
>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
