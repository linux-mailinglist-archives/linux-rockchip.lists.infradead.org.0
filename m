Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC04B19BCA9
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 09:27:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ldXH9PSUqnzGkrHor9pyM9k/VdzzjJep8aJcWDntGKU=; b=t8HLZQgquXy2+C
	Td7233/1HhxCf4af9mgabNlo58B5wMdGpA6kTfRV6gmYKiAsBoGSu/U6VmAf/y2zCJkCebqMNBa7H
	78ZMcdTaJVlW3arj8Ls7Gecw9IGQOSVq4n+dWAg1EshYpWz1r7zk/Dv00PaK2haZmu2HxthtQjchA
	hZPkVfybU/lnzodKujS9TlpnDvHSLWr1OxsnHK6huiHVZIJyTbE/sZArVmddoNhZiqYTVkqyIm0sP
	rOG3vD/A3qF/N7JEEF7Nb2c4fbw864EoEfXOJv3a4UxAmWD3PUWfD0sBkbdLaNhPAXBZC0nCb4kBR
	MedKrXioUM/lLBsF2XlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJuGG-0001SY-NN; Thu, 02 Apr 2020 07:27:36 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJuGC-0001Rt-5t
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 07:27:34 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1jJuG6-0002Fs-MQ; Thu, 02 Apr 2020 09:27:26 +0200
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from dell2.five-lan.de (pD9E89FA4.dip0.t-ipconnect.de
 [217.232.159.164]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 0327RODp009279
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Thu, 2 Apr 2020 09:27:24 +0200
Subject: Re: Power Key/button on rk3399-roc-pc
To: Suniel Mahesh <sunil@amarulasolutions.com>
References: <CAM+7aWuR-2EYSDQLj+Sep9cu_cAsL5QD=wRrar-9vLSd_7KPyg@mail.gmail.com>
 <c3f77864-ab66-e31c-e9a6-5a3c8e10b6ea@fivetechno.de>
 <CAM+7aWshiM3YAc9B+GADqKry7bAPapdTJAym-9Wzadtdr3cJHg@mail.gmail.com>
From: Markus Reichl <m.reichl@fivetechno.de>
Message-ID: <af59b7f4-7fb9-4370-9cf5-de4bfedf9e43@fivetechno.de>
Date: Thu, 2 Apr 2020 09:27:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAM+7aWshiM3YAc9B+GADqKry7bAPapdTJAym-9Wzadtdr3cJHg@mail.gmail.com>
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1585812452;
 50db5afd; 
X-HE-SMSGID: 1jJuG6-0002Fs-MQ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_002732_362260_22BDEA2F 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Kever Yang <kever.yang@rock-chips.com>, linux-rockchip@lists.infradead.org,
 djw@t-chip.com.cn, Heiko Stuebner <heiko@sntech.de>,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Suniel,

Am 02.04.20 um 06:39 schrieb Suniel Mahesh:
> On Wed, Apr 1, 2020 at 3:40 PM Markus Reichl <m.reichl@fivetechno.de> wrote:
>>
>> Hi Suniel,
>>
>> Am 01.04.20 um 06:53 schrieb Suniel Mahesh:
>> > Hi Markus, Levin and all,
>> >
>> > Can you guys please suggest me on my requirement.
>> >
>> > rk3399-roc-pc board has a Power Key/button. As per the schematics this
>> > Power Key/button
>> > is connected to GPIO0_A5.
>>
>> And to PWRON of RK808.
>>
>> >
>> > My requirement is can I use this button for board powerup (especially
>> > in linux when we issue
>> > "poweroff" command, the board shuts down and it should power back on
>> > after I press the Power Key/button).
>> >
>> > For the above to happen, I think this Power Key/button be connected to
>> > PMIC RK808-D IC, am i correct ?
>>
>> Yes, see P.16 of ROC-3399-PC-V10-A-20180804 schematic.
>> >
>> > In the schematics, it is not very clear as if such arrangement is
>> > there (though it says it can be an option in
>> > RK3399_BOX_REF_V13_20180821.pdf). I am attaching the document.
>> >
>> > Please suggest/comment on my requirement.
>>
>> Should work, everything is in place, just press long enough ;-).
> 
> Thanks Markus for your help. its working.
> 
>>
>> Btw. could you just revert your recent U-Boot commit
>> checking GPIO0_A5 that prevents unattended booting?
> 
> we have sent a patch series(5 patches) which takes care of the above
> issue. attaching patchwork links:
> https://patchwork.ozlabs.org/patch/1258093/

I looked at your
[v2,2/5] roc-rk3399-pc: Set low power leds, power key only if POR [1]
and it seems to prevent unattended boot after a power interruption
(brown out), which is a problem for a device with a built in board
and no access to power key or operator.
I really would prefer straight boot without human intervention in
all cases.

Thanks,
--
Markus

[1] https://patchwork.ozlabs.org/patch/1258094/

> 
> Suniel
>>
>> Thanks,
>> --
>> Markus
>>
>> >
>> > Thanks and regards
>> > Suniel
>> >
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
