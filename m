Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CB5A553F
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Sep 2019 13:47:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jMSLB7XN++cgZuGroy7mHVNAkqGLjJZSuJ/gQl3MKvk=; b=LOfxiTgQoVdKl+
	qLsrac7PfZmm+8blYhtDJXDEx+yByl610xp5+x/s16/2zhp2wZtAwKKoyDG84ekmou7RbLZVsbAU+
	gY7h90/AoFJGvNKQ380uUMhRpXFOwKPUz8o778OV2pRMW+ztoo5D8zJcmtAp4Z3cQvI53ugEJ48Mu
	9QFWVNQM5whzrD+9EPsR8hl6EosdEwL+TSOwpxOXdXAJB7cNj52JK1phJJGFJw9CZ4rXf0xq3G7Uz
	SvOfMk9N9gg4F73Z+O/Ic2WKOrd53PYTVRdAmJK4GHwLwi90OqBE54cbSwvnVOqAjS4PRsDiSRLGf
	1QglCq25VodHVofYYkUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4knc-00065G-6m; Mon, 02 Sep 2019 11:47:08 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4knS-0005so-LA
 for linux-rockchip@lists.infradead.org; Mon, 02 Sep 2019 11:47:00 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud9.xs4all.net with ESMTPA
 id 4knDidaguzaKO4knGiXWBB; Mon, 02 Sep 2019 13:46:50 +0200
Subject: Re: [RFC 10/12] media: hantro: Add support for H264 decoding on RK3399
To: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia <ezequiel@collabora.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20190901124531.23645-1-jonas@kwiboo.se>
 <HE1PR06MB40119DE07D38060F531D1070ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <99943cdf-7e3b-f819-5d81-2e007e788682@xs4all.nl>
Date: Mon, 2 Sep 2019 13:46:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <HE1PR06MB40119DE07D38060F531D1070ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfLcXWzujJMuvci893htW5/WH0F/hjHWkpTFnm1lpE6jVMZ59ZbS6Eni3lm0qlKUCmfvUXf6qHGyk2IEHuqBmSZoYZZymoYBlsbWur39VwOSFGABlHlOh
 5vXpnNgjLuR1vHu25PXGdwLfaXhPgBLaxfVDPgqeTzIgkn5/REE30xKONjS1s25hl6DWtbikdXZPWPMNLQLMOohdOrgoRHO7izlXFfnDg/LBUNlGWANVrgbL
 qVHKJH+xn2AQHo2tRJ01VTj5obrHdS7y8ugriStMbqYSV0QlZcRg+41avsTPyOnzuDpKe2cFq4a17WFJWf2IsLRHdEjkXgaajZsY/U1YlR19KstUIsL3fO1T
 7mcBwlE52DuB2xnJV8lervEKe0pAn+2mwI+Lvr3QF2EN8j9fkIizk2w0TW3L7LfpuNpd9e9czcc+D4cnKVau1QZhVAcm/9xVArmOyBsoN9bEx9EHDZ6+oa6T
 WZMUtkD2PGdJdRCd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_044658_965170_9B1500E6 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.30 listed in list.dnswl.org]
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 9/1/19 2:45 PM, Jonas Karlman wrote:
> Rockchip RK3399 SoC has the same Hantro G1 IP block
> as RK3288, but the registers are entirely different.
> 
> In a similar fashion as MPEG-2 and VP8 decoding,
> it's simpler to just add a separate implementation.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  drivers/staging/media/hantro/Makefile         |   1 +
>  .../staging/media/hantro/hantro_g1_h264_dec.c |   1 -
>  drivers/staging/media/hantro/hantro_hw.h      |   1 +
>  .../media/hantro/rk3399_vpu_hw_h264_dec.c     | 486 ++++++++++++++++++
>  4 files changed, 488 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/staging/media/hantro/rk3399_vpu_hw_h264_dec.c
> 
> diff --git a/drivers/staging/media/hantro/Makefile b/drivers/staging/media/hantro/Makefile
> index 5d6b0383d280..8d33b0e8aa6c 100644
> --- a/drivers/staging/media/hantro/Makefile
> +++ b/drivers/staging/media/hantro/Makefile
> @@ -8,6 +8,7 @@ hantro-vpu-y += \
>  		hantro_g1_mpeg2_dec.o \
>  		hantro_g1_vp8_dec.o \
>  		rk3399_vpu_hw_jpeg_enc.o \
> +		rk3399_vpu_hw_h264_dec.o \
>  		rk3399_vpu_hw_mpeg2_dec.o \
>  		rk3399_vpu_hw_vp8_dec.o \
>  		hantro_jpeg.o \
> diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> index 4b82b9fd5252..ec2736fb473d 100644
> --- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> @@ -202,7 +202,6 @@
>  #define G1_REG_REFBU_E(v)		((v) ? BIT(31) : 0)
>  
>  #define G1_REG_APF_THRESHOLD(v)		(((v) << 0) & GENMASK(13, 0))
> ->>>>>>> b22734fb5e2c... Ymedia: hantro: Refactor G1 H264 code

^^^^^^^^^^^^^^^

Seems to be a left-over from patch 9?

Regards,

	Hans

>  
>  void hantro_g1_h264_dec_run(struct hantro_ctx *ctx)
>  {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
