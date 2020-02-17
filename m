Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E75161C17
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Feb 2020 21:04:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LNq6QvVD2uC1wEIDSZ8XhmlCghEV1UuP81iykT7RIJg=; b=SgHSUNSQoA20gh
	jAN3/llCxHZ2+xG8KH1QVJjgamSgmpe0rQPrqQ6WKQafVENhcsyZLDSJ/p1fUqBVrQDgPBJ0238qQ
	EeKRs3rjlMHOUaGk1xN7xm15kyJQeWAomZiOq8qTtUCrPqgHKnqOx1w/ec84b42W9ruJIGedB24QI
	/+8oyXPYnWw63/o9VN8Vi37KGU4QuD0EtkoPOIV1ejpdh5YYFdfUWmR5fCmAXPoe9HiByeSYzBP2X
	NSYfJS7uNZ1F3sVB9+R8al2qIpqc4qdX4e13blZ5m1aWidHoyEhUUZ+6UQX21bqufQx1uiadZDGL/
	SS2ujTzKX5OojQEVcSvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3mcX-0002n2-Iy; Mon, 17 Feb 2020 20:03:57 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3mcU-0002mY-CE
 for linux-rockchip@lists.infradead.org; Mon, 17 Feb 2020 20:03:55 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 89396293265
Subject: Re: [PATCH] media: staging: rkisp1: remove serialization item in the
 TODO file
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200217175209.8279-1-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <b8b1bbd8-e802-be53-74c5-0dd9fea49d23@collabora.com>
Date: Mon, 17 Feb 2020 17:03:47 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200217175209.8279-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_120354_546142_220B882D 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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



On 2/17/20 2:52 PM, Dafna Hirschfeld wrote:
> The item 'Fix serialization on subdev ops.' was solved,
> so remove it from the TODO file.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
> This patch is a follow-up patch of the patchset:
> 'media: staging: rkisp1: add serialization to the isp and resizer ops'
> 
>  drivers/staging/media/rkisp1/TODO | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/TODO b/drivers/staging/media/rkisp1/TODO
> index 03cd9a4e70f7..0aa9877dd64a 100644
> --- a/drivers/staging/media/rkisp1/TODO
> +++ b/drivers/staging/media/rkisp1/TODO
> @@ -1,4 +1,3 @@
> -* Fix serialization on subdev ops.
>  * Don't use v4l2_async_notifier_parse_fwnode_endpoints_by_port().
>  e.g. isp_parse_of_endpoints in drivers/media/platform/omap3isp/isp.c
>  cio2_parse_firmware in drivers/media/pci/intel/ipu3/ipu3-cio2.c.
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
