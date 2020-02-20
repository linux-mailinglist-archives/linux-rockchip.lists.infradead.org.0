Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5694F1666F1
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Feb 2020 20:14:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5rxeHu1XnM8RaOdgeouAgLRw2VkbcUOQBlIrU6LbuGE=; b=TUMmqZNkMksHnd
	+IdltLS7DFh6PGFBQTguGfLR8wiFwawMDWq0UshK7iDw7e0ITbSkoZbmR/upzZfGaiKTNIkghOIlX
	mj0bv4LUxlsWXz560zXXZ4asts/mYQlEu3PIx78HunCnu0NQ9qPekSbJxadTnZ15RwbnjJhZQUjd7
	SuaqcKotDwp/AvqsVUiMzS5czdD+itftGpqLpUj1D0hmHFoPUFIn37xY0Hj+rAvQe9lkeADCgr/tQ
	fVcLQfLfYSHmRGLakEeqxmoB7QuAaB9ZOmc6sEY1GidMYEivaW8IN8iTpYxg0OUq2lSgufTty0sPG
	05P+9QK58N/b5ACKtJ4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4rH5-0007UI-Ln; Thu, 20 Feb 2020 19:14:15 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4rH2-0007Ti-KC
 for linux-rockchip@lists.infradead.org; Thu, 20 Feb 2020 19:14:13 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id F0C9F2950AF
Subject: Re: [PATCH] media: staging: rkisp1: capture: remove support to
 userptr memory
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200220185603.26968-1-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <54b8a35e-b0d4-3aba-a6ab-c44981db21a1@collabora.com>
Date: Thu, 20 Feb 2020 16:14:04 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200220185603.26968-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_111412_792378_CF4F6687 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 2/20/20 3:56 PM, Dafna Hirschfeld wrote:
> The dma_contig memory operations which is used by the capture
> should not support userptr. Therefore remove it.

I would just re-word this a bit, something like:

VB2_USERPTR support doesn't make sense for drivers based on
vb2_dma_contig, so just drop it.

Otherwise, queues using vb2_dma_contig_memops causes v4l2-compliance
to fail for VB2_USERPTR mode, due to buffer misalignment.

> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index 5f97af5cd95f..a006cd03228d 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -1349,7 +1349,7 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
>  
>  	q = &node->buf_queue;
>  	q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
> -	q->io_modes = VB2_MMAP | VB2_DMABUF | VB2_USERPTR;
> +	q->io_modes = VB2_MMAP | VB2_DMABUF;
>  	q->drv_priv = cap;
>  	q->ops = &rkisp1_vb2_ops;
>  	q->mem_ops = &vb2_dma_contig_memops;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
