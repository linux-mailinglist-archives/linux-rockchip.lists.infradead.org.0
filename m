Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4678F175DB7
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Mar 2020 15:58:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TjY8R0rTFu45M6qByvoMzcAK3TVr/44kCgtEogwEVSI=; b=EcMaXL2iG/DT4W
	hxDEYVVKAxGrwoT+HWelvNojZWeOimf8QCknqxhtUvppNrqWi/Wzsl7GP4KqUjLwfEDbXvKbioqW3
	w58hXOncSf/HmGr5Pfoe2jx2KwHNvC7pqTub+KlSf3En4+UNb5xUWxPleuGOVzxI0cxOvsaxpbGig
	mfKod0cJVNVIwy2RPS2Zd/jxEwmad8WbK1y0eBeZaqmqTkGyoT4FSF+ofUlpH2ZIgW9mGHAh8tANw
	KWfU1TvoZ1T4xRKcVvl9qrw14sW992L56aneOwxSJrlteYDFX3pflz/N+AlHzE6xeIeSSiL9cNROg
	G+IBvhht32ob/E9lYkow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8mWo-0007e3-9Z; Mon, 02 Mar 2020 14:58:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8mWk-0007cR-JC; Mon, 02 Mar 2020 14:58:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A99EA1045;
 Mon,  2 Mar 2020 06:58:35 -0800 (PST)
Received: from [10.1.195.32] (e112269-lin.cambridge.arm.com [10.1.195.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 673023F534;
 Mon,  2 Mar 2020 06:58:34 -0800 (PST)
Subject: Re: [PATCH RFT v2 0/3] devfreq fixes for panfrost
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20200112001623.2121227-1-martin.blumenstingl@googlemail.com>
 <CAFBinCBLJyPxOBv0JNe7o0ME3rvPi+2Qv7Lwgw6T92f15ZXcxA@mail.gmail.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <6f0693f9-3efe-d1f0-18b1-90dda7b3d0a4@arm.com>
Date: Mon, 2 Mar 2020 14:58:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAFBinCBLJyPxOBv0JNe7o0ME3rvPi+2Qv7Lwgw6T92f15ZXcxA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_065838_676613_35AC3E10 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 sudeep.holla@arm.com, linux-amlogic@lists.infradead.org, robin.murphy@arm.com,
 alyssa@rosenzweig.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 22/02/2020 19:42, Martin Blumenstingl wrote:
> Hi Steven,
> 
> On Sun, Jan 12, 2020 at 1:16 AM Martin Blumenstingl
> <martin.blumenstingl@googlemail.com> wrote:
>>
[...]
>>
>>
>> Martin Blumenstingl (3):
>>   drm/panfrost: enable devfreq based the "operating-points-v2" property
>>   drm/panfrost: call dev_pm_opp_of_remove_table() in all error-paths
>>   drm/panfrost: Use the mali-supply regulator for control again
> I don't have time to work on these patches in the near future
> can you (or if someone else is interested then please speak up) please
> take these over? you are familiar with the panfrost devfreq code and
> you have at least one board where the GPU regulator actually has to
> change the voltage (which means you can test this properly; on Amlogic
> SoCs the GPU voltage is fixed across all frequencies).

Hi Martin,

Sorry for the slow response - yes I can pick this up. Although I've got
some other things to catch up with first.

Thanks,

Steve

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
