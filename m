Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FAF565FF
	for <lists+linux-rockchip@lfdr.de>; Wed, 26 Jun 2019 11:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0Ih3uS8s1kgAj8EXkkBqvl20z9JpljImPEUuyR3EU4=; b=n38pR2Bb6QW1fE
	F/Z0/YzzIdOZd9El/Q90kt5hnmF/0f7TxVWYW+TigzXAJaHqxX0uvul2n2dcAyJGkGrP4M17orxai
	4cX19nIxyuhMFVLDkyDRz1tt7TxyY+l0ujRM+fho6tuk1lsaLv14cEDq7T3e64mJgr2wst/qTAjEG
	AJ3JgyupSrfGVMxe8k4oU+SVWxjgTYG0qrERitnBJ4Bf3YFM/HZx53YS5hEF7E2zRzR0Q7aQ4uQIN
	wdx9X0XH2yZwTQ2CkvQQl+G5cxN7AExriny98qqI+ZMxdC4k1Ng2Kg/7TO99ZlGLuFzYZ9E/D4KgS
	oJgU8RFNl9p6BG9ikkzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg4fK-0001kO-4p; Wed, 26 Jun 2019 09:56:34 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg4fB-0001jD-MS
 for linux-rockchip@lists.infradead.org; Wed, 26 Jun 2019 09:56:29 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190626095621euoutp025ea52704cad8d0b255c34756989d9cee~rtxFcwHCO0686206862euoutp02W
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Jun 2019 09:56:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190626095621euoutp025ea52704cad8d0b255c34756989d9cee~rtxFcwHCO0686206862euoutp02W
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561542981;
 bh=Hk7za34B6PtC3S7miNX/a+oGyxVJXmwKHDbecortBKc=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=o8SrkhJl7F3EciyZZ8tAVTRp/vCSsciUyEUwNJkp0PIAWUdSZbmvtubfdWbA4cxQf
 dk3iqkM/quo23adh7MC8wN7iH02ejeP3rdwYUFbjXz3ejC7I/7HbyS/0faf8Oow6XZ
 YDKmE2SYxte1goj2aAqVCCY3WhxYQa/U1BhUwSzw=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190626095620eucas1p14bfef993fc308e8e3cf36688cbac4b15~rtxE1lwZU0280502805eucas1p1l;
 Wed, 26 Jun 2019 09:56:20 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id AE.AE.04325.441431D5; Wed, 26
 Jun 2019 10:56:20 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190626095619eucas1p2d17e9b495f3bdebf27b06c3fcec52ad8~rtxEHWQyy0312703127eucas1p2y;
 Wed, 26 Jun 2019 09:56:19 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190626095619eusmtrp2c277c1fcef3823b35811e8632b7e7722~rtxD4-cjB0511105111eusmtrp2j;
 Wed, 26 Jun 2019 09:56:19 +0000 (GMT)
X-AuditID: cbfec7f5-b8fff700000010e5-47-5d13414449d4
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 7D.90.04140.341431D5; Wed, 26
 Jun 2019 10:56:19 +0100 (BST)
Received: from [106.120.51.74] (unknown [106.120.51.74]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190626095618eusmtip26d78c3c13eebcac38721956ffff22091~rtxDJsg3V2662626626eusmtip26;
 Wed, 26 Jun 2019 09:56:18 +0000 (GMT)
Subject: Re: [PATCH v2 1/2] drm/bridge/synopsys: dw-hdmi: Handle audio for
 more clock rates
To: Doug Anderson <dianders@chromium.org>
From: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <a94d9554-fc93-a2d0-9a30-9604db8c123e@samsung.com>
Date: Wed, 26 Jun 2019 11:56:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAD=FV=WJBkYfRznh6aAyvgKgHb8-AG0hMORdKA0BXCL89wG_7w@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa1BMYRjHvXvOnk47bU6bpkdF2dGHomIY85LJrQ9njBkMH4w0LM5Uo032
 SBJakm6KiLTRGrNpU7mUShlkM11Qo6tc29xTTaM2ppmydves0bf/8zz/3/s8/5mXJmTJlAcd
 FXOQU8UoouWUhKxunGgLCF3jGr4oV0/hrLYWEc6qvivC5uocAmub31C49cYTCneNj1DY/HFQ
 jIc+PiVw9+8BArcMdZM4PUfngDvrrlB41GgmsHHgMcKG7DCsn6hC+P2dVrTahR3pTXFgC8sS
 2QJ1O8k+/HWNZAvS8sVs87kOEVvzyyhm+zKbRGylLonVXeqm2PqsCyRb01NIsGMVczdJt0tW
 7uWiow5xqqCQXZLI5gujROwHn8OfBjMoNeqcnYEcaWCWQvpkHZmBJLSM0SO4W9wpEgoTgu8d
 RWKhGLMUb1PRP2TwWY8dKUZQOfbD7hpGUHq1xMHqcmXCobXZRFj1LMYPvqoHCKuJYErF0Pjl
 PWkdUJbBVOVryqqlTAhc71fbYJLxhexLGhvsxmwDU20FEjwu0JL/2cY6MpvhTO2UzUMw3lAz
 fMWu3eHNZ60tBDDlNPQ/yLPfHQoF9WZC0K7wo+meg6C9wFxrBaw6Cfr0pwgBTkNQdafWDgRD
 Q1O7JSdt2eAHt+uChPYaeNFbZmsD4wy9wy7CDc5wvjqPENpSSDstE9zzoK+1yv6gOxS9HKfO
 IblmWjLNtDSaaWk0//deQ+RN5M7F8coIjl8Sw8UH8golHxcTEbhnv7ICWb7m8z9N4/fRo8nd
 BsTQSO4kVXvLwmVixSE+QWlAQBPyWdIiBRMuk+5VJBzhVPt3quKiOd6APGlS7i5NnGEMkzER
 ioPcPo6L5VT/piLa0UONQuO6jw7sfCd56zfiv2KVW9rS9am5bVt1Gwe3zK9Zuzu2XMtzntqL
 Z0+MpBSfNxybSc+/ZTS11C/fciAh7/LxMH1iw0+fdcG9Ev9lmU83vCg+kaNmk+4tV2oLS+gF
 u2YHJAelxneEdKkXxl8cdVrmvNoUcnLON02JV8MrXz6VT+/bESon+UjFYn9CxSv+AmQsCT6W
 AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGKsWRmVeSWpSXmKPExsVy+t/xe7rOjsKxBpfnC1r0njvJZNG7bSOT
 xf9tE5kt5p+4xWZxdtlBNosrX9+zWfx/9JrV4s2jI8wWV7+/ZLY4+eYqi0XnxCXsFpd3zWGz
 +PTgP7PFg5f7GS0O9UVbrPi5ldHi7oazjA6CHu9vtLJ7zFtT7TG74SKLx95vC1g8ZnfMZPU4
 MeESk8f2bw9YPe53H2fy2Lyk3mPJtKtsHgd6J7N4bL82j9nj8ya5AN4oPZui/NKSVIWM/OIS
 W6VoQwsjPUNLCz0jE0s9Q2PzWCsjUyV9O5uU1JzMstQifbsEvYwTkz8xF9xTqHj8uoutgfGy
 ZBcjJ4eEgInE61PXWLoYuTiEBJYySnSdW8oOkRCX2D3/LTOELSzx51oXG0TRa0aJlXuPsYAk
 hAViJc6e+AJWJCKgKfGs4SUzSBGzwFpWicW9pxghOrqZJLYtncoEUsUGVPV38002EJtXwE5i
 0cMGsHUsAqoSfdNmgU0SFYiQmL2rgQWiRlDi5MwnYDanQKBEz86/YDXMAuoSf+ZdgrLlJba/
 nQNli0vcejKfaQKj0Cwk7bOQtMxC0jILScsCRpZVjCKppcW56bnFRnrFibnFpXnpesn5uZsY
 gWli27GfW3Ywdr0LPsQowMGoxMPbIC8UK8SaWFZcmXuIUYKDWUmEd2miQKwQb0piZVVqUX58
 UWlOavEhRlOg5yYyS4km5wNTWF5JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQi
 mD4mDk4pYDTJdyVkpiQkme9fqbTggoPX7OnKSes2XYuUnP/p+i7ZDcneqS8XXzIuPbDmQO7P
 2eXncxZkW9lPEzPdLzb5UE2084Fsj5UvgnIsVVlnR38oWsH2k1u0jzuy6V/h/8zuXq1HPw+J
 R3s7/dU7dmSu3O4/v3d8YZflfx/2XdvwvlmJD3N1bmLQeSWW4oxEQy3mouJEAAnGQcIpAwAA
X-CMS-MailID: 20190626095619eucas1p2d17e9b495f3bdebf27b06c3fcec52ad8
X-Msg-Generator: CA
X-RootMTR: 20190619211151epcas3p4dbb163c034afa4063869c761b93e24b1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190619211151epcas3p4dbb163c034afa4063869c761b93e24b1
References: <CGME20190619211151epcas3p4dbb163c034afa4063869c761b93e24b1@epcas3p4.samsung.com>
 <20190619210718.134951-1-dianders@chromium.org>
 <bec87373-48cc-0c55-9662-a74a7d2a47a0@samsung.com>
 <CAD=FV=WJBkYfRznh6aAyvgKgHb8-AG0hMORdKA0BXCL89wG_7w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_025626_679059_A0A1AE21 
X-CRM114-Status: GOOD (  25.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Maxime Ripard <maxime.ripard@bootlin.com>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Dylan Reid <dgreid@chromium.org>,
 Jerome Brunet <jbrunet@baylibre.com>, Sam Ravnborg <sam@ravnborg.org>,
 Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 25.06.2019 18:26, Doug Anderson wrote:
> Hi,
>
>
> On Tue, Jun 25, 2019 at 9:07 AM Andrzej Hajda <a.hajda@samsung.com> wrote:
>> On 19.06.2019 23:07, Douglas Anderson wrote:
>>> Let's add some better support for HDMI audio to dw_hdmi.
>>> Specifically:
>>>
>>> 1. For 44.1 kHz audio the old code made the assumption that an N of
>>> 6272 was right most of the time.  That wasn't true and the new table
>>> should pick a more ideal value.
>>
>> Why? I ask because it is against recommendation from HDMI specs.
> The place where it does matter (and why I originally did this work) is
> when you don't have auto-CTS.  In such a case you really need "N" and
> "CTS" to make the math work and both be integral.  This makes sure
> that you don't slowly accumulate offsets.  I'm hoping that this point
> should be non-controversial so I won't argue it more.
>
> I am an admitted non-expert, but I have a feeling that with Auto-CTS
> either the old number or the new numbers would produce pretty much the
> same experience.


Because Auto-CTS mechanism will alternate between two or more CTS values
every frame, thus it will compensate non-rational clock relationship.


>   AKA: anyone using auto-CTS won't notice any change
> at all.  I guess the question is: with Auto-CTS should you pick the
> "ideal" 6272 or a value that allows CTS to be the closest to integral
> as possible.  By reading between the lines of the spec, I decided that
> it was slightly more important to allow for an integral CTS.  If
> achieving an integral CTS wasn't a goal then the spec wouldn't even
> have listed special cases for any of the clock rates.  We would just
> be using the ideal N and Auto-CTS and be done with it.  The whole
> point of the tables they list is to make CTS integral.


Specification recommends many contradictory things without explicit
prioritization, at least I have not found it.

So we should relay on our intuition.

I guess that with auto-cts N we should follow recommendation - I guess
most sinks have been better tested with recommended values.

So what with non-auto-cts case:

1. How many devices do not have auto-cts? how many alternative TMDS
clocks we have? Maybe it is theoretical problem.

2. Alternating CTS in software is possible, but quite
complicated/annoying, but at least it will follow recommendation :)


Regards

Andrzej


>
>
>>> 2. The new table has values from the HDMI spec for 297 MHz and 594
>>> MHz.
>>>
>>> 3. There is now code to try to come up with a more idea N/CTS for
>>> clock rates that aren't in the table.  This code is a bit slow because
>>> it iterates over every possible value of N and picks the best one, but
>>> it should make a good fallback.
>>>
>>> NOTES:
>>> - The oddest part of this patch comes about because computing the
>>>   ideal N/CTS means knowing the _exact_ clock rate, not a rounded
>>>   version of it.  The drm framework makes this harder by rounding
>>>   rates to kHz, but even if it didn't there might be cases where the
>>>   ideal rate could only be calculated if we knew the real
>>>   (non-integral) rate.  This means that in cases where we know (or
>>>   believe) that the true rate is something other than the rate we are
>>>   told by drm.
>>> - This patch makes much less of a difference after the patch
>>>   ("drm/bridge: dw-hdmi: Use automatic CTS generation mode when using
>>>   non-AHB audio"), at least if you're using I2S audio.  The main goal
>>>   of picking a good N is to make it possible to get a nice integral
>>>   CTS value, but if CTS is automatic then that's much less critical.
>>
>> As I said above HDMI recommendations are different from those from your
>> patch. Please elaborate why?
>>
>> Btw I've seen your old patches introducing recommended N/CTS calculation
>> helpers in HDMI framework, unfortunately abandoned due to lack of interest.
>>
>> Maybe resurrecting them would be a good idea, with assumption there will
>> be users :)
> I have old patches introducing this into the HDMI framework?  I don't
> remember them / can't find them.  Can you provide a pointer?
>
> -Doug
>
>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
