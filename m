Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD5815389F
	for <lists+linux-rockchip@lfdr.de>; Wed,  5 Feb 2020 20:03:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eLVgKBYF013HORQQMwOND9UZzfVmSqP8C/WYTJ1Yqbc=; b=nDQgswu1jtNboBmEeR/khhhId
	j2g5UqchpI+2dMy+UJW4u9VcQUVXx+R1us9jC6dHB17BAChEHwumo3LG8ZXL4EbYSkxTD7+fFoPHX
	GB/Xd1gWHWu9Dbl3ky/oB3+ArrG0Ini38pyBhY0UPr/j7f4bs05XOo5SIqJwVL8VhlmnobrxMuaEg
	cZ8qYF9uC7FVtnG92Nsy17f4PFU5ZKDAYcKX9kWZvBEPdmwK+tq6UU43x65ijir5eDWxbLK+Khb8r
	1gTtYrT09E9BnnV40VUSPSLLN6rfGfXFitxbaoSmLULJVfnmdkjwbZmle/SCpEAGZi5cRa9hh9v8S
	syKkxywbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izPxA-0000ud-U9; Wed, 05 Feb 2020 19:03:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izPx3-0000p1-Nr; Wed, 05 Feb 2020 19:03:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 305051FB;
 Wed,  5 Feb 2020 11:03:01 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5C7FD3F52E;
 Wed,  5 Feb 2020 11:03:00 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328-roc-cc sdmmcio-regulator
To: Peter Geis <pgwipeout@gmail.com>, Adam Van Ymeren <adam@vany.ca>
References: <87imkryz5t.fsf@vany.ca>
 <7b9829b3-e2d2-95b1-03cb-1af7a3c6acad@arm.com>
 <4a6a9d81-c831-4167-7fbf-64805940fb6f@vany.ca>
 <d8a8b696-268b-1ea8-7b5e-406a651011ff@arm.com>
 <510d310b-30af-7b24-d472-907bc6b2ef46@vany.ca>
 <CAMdYzYo5V2rHE6Axx9p67n3FcCFpQ5TA+m7kqaE3Uqn6d0QUhw@mail.gmail.com>
 <7b36198e-25c0-4f3b-d871-6bd5aaf619d8@vany.ca>
 <CAMdYzYp_dVjn18-6gy5MVpuGcOpf26eaPitfNZhARCixfrtYCA@mail.gmail.com>
 <2f863743-f5fd-7702-ac22-762dbca834cb@vany.ca>
 <CAMdYzYopKjRpVnyq2k84XZK0kmR_ZBH8KNjVyPz3upQjx0rLJQ@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <382b4bd5-279d-b227-5d0c-774d9c164168@arm.com>
Date: Wed, 5 Feb 2020 19:02:59 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAMdYzYopKjRpVnyq2k84XZK0kmR_ZBH8KNjVyPz3upQjx0rLJQ@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_110305_820644_E759E156 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 05/02/2020 6:43 pm, Peter Geis wrote:
[...]
>> One thing I did notice, though, is that GPIO_MUTE seems to have some
>> inherent coupling to the analog codec, as the value automatically goes
>> high when starting to play audio, and low again when stopping (but can
>> still be manually toggled in between). Thus unless there's some secret
>> to disabling that behaviour then it might not be safe to enable analog
>> audio on these ROC-CC boards for fear of messing up peoples' SD cards.
> 
> Robin,
> Do you know if that is the SOC doing that or the drivers?

Ha, once again I hastily jump to a conclusion without fully 
investigating... I'm really not doing too well in this thread :)

You're absolutely right; on closer inspection rk3328_analog_output() in 
the codec driver is poking GRF_SOC_CON10 directly. That should be 
straightforward enough to sort out, phew!

Cheers,
Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
