Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A978B139741
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 Jan 2020 18:12:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9OrQpVt9ilcDNa+aJwQDH+SqoOiG+ggTTrYVLOn02pY=; b=tQlmo9GX7f8zUQ
	MSuFjgTtSY14u4qVF3wVXz471WHrd7QEzLGdj1c9kx/fdOpoTz+1cErBRGXM4F/5ardzCnD9uSq6f
	+7UAoP5WcjWp/orPWVNNL/Iti3w2rrHu6nSWCoJyTU6cssa619p/3SyPr4dXyqhNmkTGVrKlAmyP4
	mVqdqh1IeJ5EPYeyKAFWlPoCj99yxVkf2AFe4GokXKQaoDxfU2zvNfssFy3Msl5IeOsW0ASyBKf6B
	CRcenaKxveARFHCsrstkk2wBdnULut/uWmUgazarIMp5jaroC7idyOLDbbOdLjpOn1/H1+jBVA2CY
	mEt3mezi+GLXcUvUNzgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir3GB-00071E-R4; Mon, 13 Jan 2020 17:12:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir3EQ-000554-T0; Mon, 13 Jan 2020 17:10:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 98A4C11B3;
 Mon, 13 Jan 2020 09:10:25 -0800 (PST)
Received: from [10.1.194.52] (e112269-lin.cambridge.arm.com [10.1.194.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 48CE13F534;
 Mon, 13 Jan 2020 09:10:24 -0800 (PST)
Subject: Re: [PATCH RFT v1 3/3] drm/panfrost: Use the mali-supply regulator
 for control again
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20200107230626.885451-1-martin.blumenstingl@googlemail.com>
 <20200107230626.885451-4-martin.blumenstingl@googlemail.com>
 <2ceffe46-57a8-79a8-2c41-d04b227d3792@arm.com>
 <CAFBinCD7o-q-i66zZhOro1DanKAfG-8obQtzxxD==xOwsy_d6A@mail.gmail.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <21d0730b-8299-8bfd-4321-746ccb3772d0@arm.com>
Date: Mon, 13 Jan 2020 17:10:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CAFBinCD7o-q-i66zZhOro1DanKAfG-8obQtzxxD==xOwsy_d6A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_091027_075740_F2C88A22 
X-CRM114-Status: GOOD (  18.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: tomeu.vizoso@collabora.com, airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-amlogic@lists.infradead.org, robin.murphy@arm.com, alyssa@rosenzweig.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 09/01/2020 17:27, Martin Blumenstingl wrote:
> On Thu, Jan 9, 2020 at 12:31 PM Steven Price <steven.price@arm.com> wrote:
>>
>> On 07/01/2020 23:06, Martin Blumenstingl wrote:
>>> dev_pm_opp_set_rate() needs a reference to the regulator which should be
>>> updated when updating the GPU frequency. The name of the regulator has
>>> to be passed at initialization-time using dev_pm_opp_set_regulators().
>>> Add the call to dev_pm_opp_set_regulators() so dev_pm_opp_set_rate()
>>> will update the GPU regulator when updating the frequency (just like
>>> we did this manually before when we open-coded dev_pm_opp_set_rate()).
>>
>> This patch causes a warning from debugfs on my firefly (RK3288) board:
>>
>> debugfs: Directory 'ffa30000.gpu-mali' with parent 'vdd_gpu' already
>> present!
>>
>> So it looks like the regulator is being added twice - but I haven't
>> investigated further.
> I *think* it's because the regulator is already fetched by the
> panfrost driver itself to enable it
> (the devfreq code currently does not support enabling the regulator,
> it can only control the voltage)
> 
> I'm not sure what to do about this though

Having a little play around with this, I think you can simply remove the
panfrost_regulator_init() call. This at least works for me - the call to
dev_pm_opp_set_regulators() seems to set everything up. However I
suspect you need to do this unconditionally even if there are no
operating points defined.

> [...]
>>>       ret = dev_pm_opp_of_add_table(dev);
>>> -     if (ret)
>>> +     if (ret) {
>>> +             dev_pm_opp_put_regulators(pfdev->devfreq.regulators_opp_table);
>>
>> If we don't have a regulator then regulators_opp_table will be NULL and
>> sadly dev_pm_opp_put_regulators() doesn't handle a NULL argument. The
>> same applies to the two below calls obviously.
> good catch, thank you!
> are you happy with the general approach here or do you think that
> dev_pm_opp_set_regulators is the wrong way to go (for whatever
> reason)?

To be honest this is an area I still don't fully understand. There's a
lot of magic helper functions and very little in the way of helpful
documentation to work out which are the right ones to call. It seems
reasonable to me, hopefully someone more in the know will chime in it
there's something fundamentally wrong!

Thanks,

Steve

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
