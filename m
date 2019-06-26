Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 511F256613
	for <lists+linux-rockchip@lfdr.de>; Wed, 26 Jun 2019 12:00:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8daFv5c+L5L3C0Yt3f3cRldGzi7nwiYNcwuSr5qcNE8=; b=H+9CJ3mSnVBT3T
	JHwpxbH/Wtax1bU6bS+T2Y0Lyxx/biutQnisNLjhBoE53VMhxgh59vnvTDJZNAbH3NAsQ6E6dJwGV
	dGGOEFP9G9j5eKzaK66zbLt34bWGKtUhmNSMZgS6O1NKstH9WBexYyz4EayKm1k8ao8Iz5iYng39K
	jy5XRZ0EQKNVz0tBOFwpK/ual4VQhE0UuNU8LvJGfrLAFhfHuYIZpvqgosvmmMPgeBlq03w69g3zT
	XHtZk9aiaPUiE04uk79M/QmC+R4euV2S2np9sNtXBt+o8WNDl7ylRtaISNYS//KZEQLlYblZ7b6U8
	R3VmC+GkB8442gNbw+kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg4jK-0003FG-27; Wed, 26 Jun 2019 10:00:42 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg4jB-0003E4-LB
 for linux-rockchip@lists.infradead.org; Wed, 26 Jun 2019 10:00:37 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190626100026euoutp01dd9b8f48b2a6cc739f8c513c95b4f7a8~rt0qEG-tU0695606956euoutp01L
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Jun 2019 10:00:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190626100026euoutp01dd9b8f48b2a6cc739f8c513c95b4f7a8~rt0qEG-tU0695606956euoutp01L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561543226;
 bh=NXk7oMxfNi8v62zBDMwYKSvviDEB9B4rrPkjTqeXUZw=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=CWsYS3aAPDeWoNyU7ZOeIvyjY4NqPOu/K+zES5OHlZ6iP/xJxOU9HmUkjObwzUfVk
 FtzktVrHHE5nhtugcV/RbVG5R/6oyauuLXXNBXNaVv4paLVB7TfDfbwhey0FnX+7St
 OolL3Q36fGNv8y2eSoO3NriUQsUxcQf5HNzSiMhg=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190626100025eucas1p1a1f3de16455e64a44e48c23f0841ed7a~rt0pYMulO2493024930eucas1p1J;
 Wed, 26 Jun 2019 10:00:25 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 03.42.04298.932431D5; Wed, 26
 Jun 2019 11:00:25 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190626100025eucas1p1b18062e095d4bc44017721646d475d23~rt0or6Bkz1345913459eucas1p1h;
 Wed, 26 Jun 2019 10:00:25 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190626100024eusmtrp2ff0747e5e34d7789be0f9a3e80301a27~rt0odrHTJ0845208452eusmtrp23;
 Wed, 26 Jun 2019 10:00:24 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-77-5d134239b2b7
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 47.31.04140.832431D5; Wed, 26
 Jun 2019 11:00:24 +0100 (BST)
Received: from [106.120.51.74] (unknown [106.120.51.74]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190626100023eusmtip1e80c72d0809655698352fc2900193d45~rt0ncfrhv0183901839eusmtip1a;
 Wed, 26 Jun 2019 10:00:23 +0000 (GMT)
Subject: Re: [PATCH v2 1/2] drm/bridge/synopsys: dw-hdmi: Handle audio for
 more clock rates
From: Andrzej Hajda <a.hajda@samsung.com>
To: Doug Anderson <dianders@chromium.org>
Message-ID: <fe8bb0f7-5ef1-4750-8b1a-f05c0f3469e0@samsung.com>
Date: Wed, 26 Jun 2019 12:00:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <a94d9554-fc93-a2d0-9a30-9604db8c123e@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfyyUcRzH+z6/7nGcHkfddxJzq7WayNbWU0ll/fH80aota0rSlWeIQ/eg
 0OYyTOykVObH6I+TH2OJHG41OubHOB1iYkZSw9w07ghD7h6W/16f7/vz/n4/78++JCqew53J
 8KhYVhEli5QSQkzTvtJ7/LSfY9CJlNcHaVVvF0KrNB8QuqRzhKD1774Q9DfzPEHPTbah9ODy
 DEp3zQ1i9LMXagE9oC0i6IWJTZSemGkGtC47kC5fqQf0WI0eXNjLzA+nCZjiqiSmUNmHMYUZ
 +TjTmdOPMA1LEzgzntWBMHXqZEb9ZpBgWlS5GLNY63rN9pbQJ4SNDI9nFV6+d4Vh3XmTRMzn
 Q49XDKNACYwumcCGhNRJ2DXzCskEQlJMlQO41DCL84UJQLO2keCLRQD/KMvQTEBaLbnLpMUt
 psoALFvdz/cYAcx/Pk1YBEcqCOo7TaiFCeooXK/7bj132uLfyhnUYkCpIQyWtJoRiyCifGG6
 udrKGHUYatP7rIZ9VAA0NdUCvscBduVPYRa2oc7DXM2AwMIo5QYbjEUozxI4MlWC8NnySZg2
 6sfzJZj1VY3z7AhnOz4KeHaBm007/clwvDzVOhykMgCsr2lCeeEsbO3owy3p0a0E77Ve/PFF
 2DNchfNLsYfDRgd+BHv4UpO3vSsRzEgX893ucFxfv32hBJYazEQOkBbsClawK0zBrjAF/999
 C7BKIGHjOHkoy3lHsY88OZmci4sK9bwfLa8FW3+we6NjoRGY++/pAEUCqZ1I6SYOEuOyeC5B
 rgOQRKVOolIZFSQWhcgSEllFdLAiLpLldOAAiUkloqQ9E4FiKlQWy0awbAyr2FER0sZZCYLP
 rUr7Kk4ZdKF1xRU1DWvxt5+uxLa0f/p5Vc6MtkaMJpZm3+mJzHT8MZiuK5J4Ltnh1UcmbYVs
 TmBziNZdI/BY+1UdeOWJyuNGS8r1inZJpavwTOtfqZPBTq9ipzt95P5go+Vh25hpqNoVqX+Q
 d5PzXTIY/VNLA0zrXmZwWYpxYTLvY6iCk/0DvB5A1X8DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpgleLIzCtJLcpLzFFi42I5/e/4XV0LJ+FYg63b5S16z51ksujdtpHJ
 Yv6JW2wWZ5cdZLO48vU9m8WbR0eYLa5+f8lscfLNVRaLzolL2C0u75rDZvHpwX9miwcv9zNa
 HOqLtljxcyujxd0NZxkd+D3e32hl95i3ptpjdsNFFo/ZHTNZPU5MuMTksf3bA1aP+93HmTw2
 L6n3WDLtKpvHgd7JLB6fN8kFcEfp2RTll5akKmTkF5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZ
 Kunb2aSk5mSWpRbp2yXoZZye/oitYK9Kxc8LtxkbGN/KdDFycEgImEhM/s7RxcjFISSwlFHi
 R9dB9i5GTqC4uMTu+W+ZIWxhiT/XuthAbCGB14wSa3+og9jCArESZ098AathE9CU+Lv5JliN
 CJD9rOElM8hQZoEbLBLrJi1lg9hwgEniyO8+FpAqXgE7ibava5lAbBYBVYldbRfBukUFIiRm
 72qAqhGUODnzCZjNKWAvMXnbZbDrmAXUJf7Mu8QMYctLbH87B8oWl7j1ZD7TBEahWUjaZyFp
 mYWkZRaSlgWMLKsYRVJLi3PTc4uN9IoTc4tL89L1kvNzNzECY3/bsZ9bdjB2vQs+xCjAwajE
 w9sgLxQrxJpYVlyZe4hRgoNZSYR3aaJArBBvSmJlVWpRfnxRaU5q8SFGU6DnJjJLiSbnA9NS
 Xkm8oamhuYWlobmxubGZhZI4b4fAwRghgfTEktTs1NSC1CKYPiYOTqkGRoX1rseXcF3MWiX5
 gvu4yz/HYH5NO+cpv2dbLglvD2h+/ctsQtOKdV/mnxZ7d6FXj1fE+F9Al8vNFatb7lZuWX1r
 0vxE1+emcx6UuJo4/Gmcd7ZseVm7QvXKn573Jc5Lt8g915UX2dTxwMtoIZfeHM41aZ//MH96
 qV6+53HH/2uOG0UmKr7uXafEUpyRaKjFXFScCABrNH79EwMAAA==
X-CMS-MailID: 20190626100025eucas1p1b18062e095d4bc44017721646d475d23
X-Msg-Generator: CA
X-RootMTR: 20190619211151epcas3p4dbb163c034afa4063869c761b93e24b1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190619211151epcas3p4dbb163c034afa4063869c761b93e24b1
References: <CGME20190619211151epcas3p4dbb163c034afa4063869c761b93e24b1@epcas3p4.samsung.com>
 <20190619210718.134951-1-dianders@chromium.org>
 <bec87373-48cc-0c55-9662-a74a7d2a47a0@samsung.com>
 <CAD=FV=WJBkYfRznh6aAyvgKgHb8-AG0hMORdKA0BXCL89wG_7w@mail.gmail.com>
 <a94d9554-fc93-a2d0-9a30-9604db8c123e@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_030034_014414_604F1202 
X-CRM114-Status: GOOD (  24.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
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
 Neil Armstrong <narmstrong@baylibre.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Jonas Karlman <jonas@kwiboo.se>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Dylan Reid <dgreid@chromium.org>, Cheng-Yi Chiang <cychiang@chromium.org>,
 Sam Ravnborg <sam@ravnborg.org>, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 26.06.2019 11:56, Andrzej Hajda wrote:
> On 25.06.2019 18:26, Doug Anderson wrote:
>> Hi,
>>
>>
>> On Tue, Jun 25, 2019 at 9:07 AM Andrzej Hajda <a.hajda@samsung.com> wrote:
>>> On 19.06.2019 23:07, Douglas Anderson wrote:
>>>> Let's add some better support for HDMI audio to dw_hdmi.
>>>> Specifically:
>>>>
>>>> 1. For 44.1 kHz audio the old code made the assumption that an N of
>>>> 6272 was right most of the time.  That wasn't true and the new table
>>>> should pick a more ideal value.
>>> Why? I ask because it is against recommendation from HDMI specs.
>> The place where it does matter (and why I originally did this work) is
>> when you don't have auto-CTS.  In such a case you really need "N" and
>> "CTS" to make the math work and both be integral.  This makes sure
>> that you don't slowly accumulate offsets.  I'm hoping that this point
>> should be non-controversial so I won't argue it more.
>>
>> I am an admitted non-expert, but I have a feeling that with Auto-CTS
>> either the old number or the new numbers would produce pretty much the
>> same experience.
>
> Because Auto-CTS mechanism will alternate between two or more CTS values
> every frame, thus it will compensate non-rational clock relationship.
>
>
>>   AKA: anyone using auto-CTS won't notice any change
>> at all.  I guess the question is: with Auto-CTS should you pick the
>> "ideal" 6272 or a value that allows CTS to be the closest to integral
>> as possible.  By reading between the lines of the spec, I decided that
>> it was slightly more important to allow for an integral CTS.  If
>> achieving an integral CTS wasn't a goal then the spec wouldn't even
>> have listed special cases for any of the clock rates.  We would just
>> be using the ideal N and Auto-CTS and be done with it.  The whole
>> point of the tables they list is to make CTS integral.
>
> Specification recommends many contradictory things without explicit
> prioritization, at least I have not found it.
>
> So we should relay on our intuition.
>
> I guess that with auto-cts N we should follow recommendation - I guess
> most sinks have been better tested with recommended values.
>
> So what with non-auto-cts case:
>
> 1. How many devices do not have auto-cts? how many alternative TMDS
> clocks we have? Maybe it is theoretical problem.
>
> 2. Alternating CTS in software is possible, but quite
> complicated/annoying, but at least it will follow recommendation :)
>
>
> Regards
>
> Andrzej
>
>
>>
>>>> 2. The new table has values from the HDMI spec for 297 MHz and 594
>>>> MHz.
>>>>
>>>> 3. There is now code to try to come up with a more idea N/CTS for
>>>> clock rates that aren't in the table.  This code is a bit slow because
>>>> it iterates over every possible value of N and picks the best one, but
>>>> it should make a good fallback.
>>>>
>>>> NOTES:
>>>> - The oddest part of this patch comes about because computing the
>>>>   ideal N/CTS means knowing the _exact_ clock rate, not a rounded
>>>>   version of it.  The drm framework makes this harder by rounding
>>>>   rates to kHz, but even if it didn't there might be cases where the
>>>>   ideal rate could only be calculated if we knew the real
>>>>   (non-integral) rate.  This means that in cases where we know (or
>>>>   believe) that the true rate is something other than the rate we are
>>>>   told by drm.
>>>> - This patch makes much less of a difference after the patch
>>>>   ("drm/bridge: dw-hdmi: Use automatic CTS generation mode when using
>>>>   non-AHB audio"), at least if you're using I2S audio.  The main goal
>>>>   of picking a good N is to make it possible to get a nice integral
>>>>   CTS value, but if CTS is automatic then that's much less critical.
>>> As I said above HDMI recommendations are different from those from your
>>> patch. Please elaborate why?
>>>
>>> Btw I've seen your old patches introducing recommended N/CTS calculation
>>> helpers in HDMI framework, unfortunately abandoned due to lack of interest.
>>>
>>> Maybe resurrecting them would be a good idea, with assumption there will
>>> be users :)
>> I have old patches introducing this into the HDMI framework?  I don't
>> remember them / can't find them.  Can you provide a pointer?


And forgot answer this:

My mistake the patches were by Arnaud Pouliquen[1].

[1]: https://patchwork.kernel.org/patch/8906791/


Regards

Andrzej



>>
>> -Doug
>>
>>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
