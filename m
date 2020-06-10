Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1677E1F58C4
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 18:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4MSbVEn2EUyHNcIRtj+J0IWR7y3JKGQ17BN1FAJtHQI=; b=dtgcH5X9fJpdeEBtovMqLqGWM
	ruak3DzCA0URP47zVOlfg3ZfNXmG5RWo0dGT2dNoz+UJ4+NQ6TVx/xLf6HmEAiYkpHRW54cc7Xxp4
	4AXtFjIvd5Vzqm8D2JrI1LxHRMyJJIoFJZKWtUkQD/gPfIf0JV5kVamO0NXbElP92m9dhvHO9riW1
	vGmiKwTXMqQnLeCTvfrN982e7qIRw52RdR1iaBOdWABqpPYdsQLWC0XrMHVSbEjJNCoeEjghFfTEs
	z7J7trdkrF1D49tXkirYs3qrE/l3x5wyxTljXeF21qDgQmsDdl/KFrfuSNzy9+oFBC0JDCjQWjLKL
	szD7FA0PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj3Jv-0005CB-7R; Wed, 10 Jun 2020 16:11:19 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj3Jr-0005A3-5s
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 16:11:16 +0000
Received: from [IPv6:2003:cb:871f:5b00:9cc4:c525:7ca2:283]
 (p200300cb871f5b009cc4c5257ca20283.dip0.t-ipconnect.de
 [IPv6:2003:cb:871f:5b00:9cc4:c525:7ca2:283])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 1FE762A07BF;
 Wed, 10 Jun 2020 17:11:09 +0100 (BST)
Subject: Re: [PATCH v2 1/4] media: staging: rkisp1: cap: change RGB24 format
 to XBGR32
To: Tomasz Figa <tfiga@chromium.org>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-2-dafna.hirschfeld@collabora.com>
 <CAHD77H=LhYV31Jw_-cTvXPh0K2ocr6o97ymJ2KkmCdkH_DE7gg@mail.gmail.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <b70dfcd2-6623-d1c9-78eb-d22b38434c73@collabora.com>
Date: Wed, 10 Jun 2020 18:11:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAHD77H=LhYV31Jw_-cTvXPh0K2ocr6o97ymJ2KkmCdkH_DE7gg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_091115_351724_EB9B3EBD 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 27.05.20 01:04, Tomasz Figa wrote:
> Hi Dafna,
> 
> On Fri, May 15, 2020 at 4:30 PM Dafna Hirschfeld
> <dafna.hirschfeld@collabora.com> wrote:
>>
>> According to the TRM, the YUV->RGB conversion outputs
>> "24 bit word". What it means is that 4 bytes are used with
>> 24bit for the RGB and the last byte is ignored.
> 
> I don't see this mentioned in the datasheets I have. On the other
> hand, XBGR32 indeed makes much more sense, as the 3-byte RGB isn't a
> very popular format. Have you validated that the hardware behavior
> indeed matches that?

Hi, yes I validated it, I also found it mentioned here:

http://rockchip.fr/RK3288%20TRM/rk3288-chapter-31-image-signal-processing-(isp).pdf

under section "31.3.9 YCbCr to RGB Conversion"

Thanks,
Dafna
> 
> Best regards,
> Tomasz
> 
>> This matches format V4L2_PIX_FMT_XBGR32.
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> ---
>>   drivers/staging/media/rkisp1/rkisp1-capture.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
>> index f69235f82c45..61b9ebe577b2 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
>> @@ -276,7 +276,7 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>>          },
>>          /* rgb */
>>          {
>> -               .fourcc = V4L2_PIX_FMT_RGB24,
>> +               .fourcc = V4L2_PIX_FMT_XBGR32,
>>                  .write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>>                  .output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB888,
>>          }, {
>> --
>> 2.17.1
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
