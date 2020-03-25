Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A58D192286
	for <lists+linux-rockchip@lfdr.de>; Wed, 25 Mar 2020 09:22:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSJO3uM+36+T+jgdJLyWx/aazojLpdVuEsVrSzBlTM8=; b=AMDLf/5ATCux+a
	VfYP9iVnGttkEJRBx6mWS106BpnVEfyg/OEB1n+2yHSw1r4sBOBk5WBolzw/xiRiczqVVc0zRTlTt
	sYZahIHLsmurY7X8ZSdTuBDbx/5bvUFE1YAoI3PMwwYB7wLbmWWdGxzLShKspPpC7DVrZbuMNVumX
	qmxK+QnFPsFoNS7y8g2VK5JY8lZSnd+lgpfJ7ClKKMUlQIyZjycohZcTEyVDT5/1JG0iUJ2Ox19Ib
	2wSBIgOlIOvBf53yz/zsSgRs657y3DiREcDUJTtKOt6I+0zAmlQ7TZvlS4wc6hUlzK1P/8hbxcfii
	uWthPFWoBtqewg1p/9mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH1Iv-0007oY-VE; Wed, 25 Mar 2020 08:22:25 +0000
Received: from lb1-smtp-cloud7.xs4all.net ([194.109.24.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH1Ir-0007nb-HC
 for linux-rockchip@lists.infradead.org; Wed, 25 Mar 2020 08:22:23 +0000
Received: from [192.168.2.10] ([46.9.234.233])
 by smtp-cloud7.xs4all.net with ESMTPA
 id H1IajKJ5TLu1fH1Iejyo5M; Wed, 25 Mar 2020 09:22:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1585124536; bh=/aDo3zrCti3BBCrxSQ/TeptM5Zr/TgtJSYJzo5ajLRM=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=PTXhT7dx6nfIYWPJYYNIHXYeLNorVkxVHVFnY1pjFqOiq7smMs9LtERuxEDmmnW3m
 7uMabsKF0l2keatFvhWzYFHNhn1ZU0hfnfz4PYp4GKM3JxNp8Ysr1YAEBxjCzvryId
 6nMHe4ztg8JtfgeW6InhTa/1YVo5ZrbC2CTLYNkyPN9N///tuH0rMagAA16k9yt4Fu
 EhUJ1x7bkNUYPiD2bqfLqxMThVxb9S29DJvOCQsMp0mr9iaoasiPmo3qtiYW8KbWt+
 uQSx/mxT4Z24OjUNY9g1qO89kpwP8vZKnx6NGyCll5S9QL8jXJDcOmfwCZalRc8kaD
 GcVEOtJGBE9Lg==
Subject: Re: [PATCH v2 3/8] hantro: Use v4l2_m2m_buf_done_and_job_finish
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200318132108.21873-1-ezequiel@collabora.com>
 <20200318132108.21873-4-ezequiel@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <13b1efe1-8b52-070b-cf11-b230bd405d3e@xs4all.nl>
Date: Wed, 25 Mar 2020 09:22:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200318132108.21873-4-ezequiel@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfE8LnAJGtJIuF9Ii9JP2ReP31A+tuYGruVID7G/PunDtKNEu8GDpAbT3oeVtzLFV3wjOopKFvqkPc55xYZuuwPuHicMbx8cgOp3Ifllw4olxPk8FZhYu
 jarfWIDfSOSqpUvHqBAieb3Q2OgmMYlPiyUg2tc0BajXXb4MfpV2zbUMhNmiDPi8Qz6AfhQtPjeX5AkVgThhFhuW3QL/+WJ3VCJJLaaWcoWQLBMCXAtPqSj3
 XjfbR7Z2itflfbso8OM9hfsSLCvMS/zE2A7++XvpuE2VbDrUsCnO0dyGYPX1kAk31ZCJVsEaM4miXingB1jsOrVAORb1f+xK5W/4JJLiQZ4EWla+sUQlNZFw
 OEAkky79aV5R4vqlI1wjjfATAc9Q6X5qyNt9wCvT/8BDY5YviK8MoZhOz9rhhIMFudCnMw75A1JOuh0ep7Dbj522yZSZUuK+q+/PjaTgk6ZMjtTcBV7qkRM/
 SEnYI7rCyVBrDzCx3ham7nRG4lwtLrqqfnIdCtAI0AnzD2xz27skmqMxzTeZwhKCMWimJh1zZpSDLx2a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_012222_026997_DA800B70 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 3/18/20 2:21 PM, Ezequiel Garcia wrote:
> Let the core sort out the nuances of returning buffers
> to userspace, by using the v4l2_m2m_buf_done_and_job_finish
> helper.
> 
> This change also removes usage of buffer sequence fields,
> which shouldn't have any meaning for stateless decoders.

Uh, why remove this? For one, doesn't this cause fails in v4l2-compliance?
Also, while I agree that it is not terribly useful, it doesn't hurt, does it?

And the V4L2 spec makes no exception for stateless codecs with respect to the
sequence field.

Nacked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>

Regards,

	Hans

> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  drivers/staging/media/hantro/hantro_drv.c | 27 ++++++++---------------
>  1 file changed, 9 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index 0b1200fc0e1a..ec889d755cd6 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -94,32 +94,23 @@ static void hantro_job_finish(struct hantro_dev *vpu,
>  			      unsigned int bytesused,
>  			      enum vb2_buffer_state result)
>  {
> -	struct vb2_v4l2_buffer *src, *dst;
>  	int ret;
>  
>  	pm_runtime_mark_last_busy(vpu->dev);
>  	pm_runtime_put_autosuspend(vpu->dev);
>  	clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);
>  
> -	src = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
> -	dst = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> -
> -	if (WARN_ON(!src))
> -		return;
> -	if (WARN_ON(!dst))
> -		return;
> -
> -	src->sequence = ctx->sequence_out++;
> -	dst->sequence = ctx->sequence_cap++;
> -
> -	ret = ctx->buf_finish(ctx, &dst->vb2_buf, bytesused);
> -	if (ret)
> -		result = VB2_BUF_STATE_ERROR;
> +	if (ctx->buf_finish) {
> +		struct vb2_v4l2_buffer *dst;
>  
> -	v4l2_m2m_buf_done(src, result);
> -	v4l2_m2m_buf_done(dst, result);
> +		dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> +		ret = ctx->buf_finish(ctx, &dst->vb2_buf, bytesused);
> +		if (ret)
> +			result = VB2_BUF_STATE_ERROR;
> +	}
>  
> -	v4l2_m2m_job_finish(vpu->m2m_dev, ctx->fh.m2m_ctx);
> +	v4l2_m2m_buf_done_and_job_finish(ctx->dev->m2m_dev, ctx->fh.m2m_ctx,
> +					 result);
>  }
>  
>  void hantro_irq_done(struct hantro_dev *vpu, unsigned int bytesused,
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
