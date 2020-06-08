Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD181F17E3
	for <lists+linux-rockchip@lfdr.de>; Mon,  8 Jun 2020 13:33:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/PIQkm1z7zxZW4Iyy4RZb7L12sr1z6gcSwP7tgjsHKA=; b=sA94Sb+51t5q8C
	CTimRq1eJT+cAAEM7HpEm/9NOw55uBfjbu5nXxQvm9yyDtzXu8eRNcT9s4FukSeTW2GwIHO764A6J
	bJVaCmc075bKpkzMSOzPgA+ySJf0BQyjh7MplJDrR5vaRDnJkyiqL2X30hROp+n/xbtLuCJxmkYFK
	BIAX1VH+0HMUfg4/N+niVa/Ltmn/yOtCoQsDji0n6rZ7tkjpKq2bp2mBMvFQoJ+ZAKmNymcTI21TV
	sijxMwNpoorMqF6II5ycIaQR8z3ny3kTtb460TuWRvtcOYnf/NufLJzKzFjf7bwG1kMRMkbG1xteI
	4LWGutzXFs5TMNuOAEpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiG22-0007m7-Q6; Mon, 08 Jun 2020 11:33:34 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiG1y-0007lW-P4
 for linux-rockchip@lists.infradead.org; Mon, 08 Jun 2020 11:33:32 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id iG1tjQeHJCKzeiG1wjlvME; Mon, 08 Jun 2020 13:33:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1591616009; bh=2RM5mDdaGap2T8ENTy0eyuoJhcBfWd/GTOz/2yQh9nA=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=FX7v5dVXhu47hdSnY6jpwwKX3BQMXN1TDeuN6wr0+E0knGIGMi2I9hI+PXqJjj4/s
 BjBZbOpOdbBoakSPcjYpWigzcpSjxYsbTauNQ4uX3rpXhMJfXXX/OSNLw7MBgqXwRa
 cogEIAl0sZ5bieqotx6Z879kbBDFNw0f9jYDQJbyUaaL0mnALNkbMz6Mr1tFHvDLa8
 2tm3BXU0dYzNSBhQJmMIHIxmL2fCTML0+sH5ZfRobQUtiR/c+7FUct71JUrghazMey
 kk6QByyYnDQkXOoUZh0JC0GaO4c+y3JIVK0htIxhNrtiWUnYS9tWnVVztkHrx3yeq3
 WgirYbgZjI/PQ==
Subject: Re: [RFC v4 1/8] media: staging: rkisp1: rsz: supported formats are
 the isp's src formats, not sink formats
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
References: <20200605172625.19777-1-dafna.hirschfeld@collabora.com>
 <20200605172625.19777-2-dafna.hirschfeld@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <a929b94b-ab8b-42cc-6ffa-d7a3e8a8332b@xs4all.nl>
Date: Mon, 8 Jun 2020 13:33:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200605172625.19777-2-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfJj5s9wfhixK5lOkp6EP0wQpt5SKnIr5SeGyfJ2TMEBPC2pBLM94a/EQpM4uci5dNRz6PASytFFDpSdkh6IUCrIouardLtpLDnyAYz6OzVhurIV3YHLR
 bGg51BaLc1FQv0y2pwV/tJTemobVbh/3mo6t6xYBBfyLMS3H54K0si+wM3t8OW/6RQpSS+ZtVbn4LbawjcXcD/8WXOvKaZmVnpd2942sV0WPY7bvpV6MxwII
 W8huRh/A8vBlibVoIOphxwdhCJGfnSJLwnWVnolZwHYqRjGjbpx2OsQ+BCCds36wl+OjeCLqYODCHFFVoEGaPED0a809OY35yLrX1s+eJ7wwjH1um6q3uhP+
 jG4Y+gxOROHA6rM1Ti+bwj+QCX/vANoeSoVRDvwWUwL28hSDZ7E9mN8dBZHjchdbb4hQDJPIEMgnzB+Q7d51RLbbrdWvOs68t8eRBlV24M2Tw+MiHnsgAo1+
 T5JIk/ZbWHdB1D1YI9Co46PTKO9wvt6RoLO5ONcbLD+LOFXa7ozHoFbM3pZwYSuf+dhSw1yZCghMq+gNDh3NJCxPmSXvfFZ8qMwRHyCyluowSoUGoc3rQy8Q
 AhBG6BgBUpImlBksX6AJl47bEHazzgbjp3hVG7eMBqe98A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_043330_954666_8309F7ED 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.30 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mchehab@kernel.org, p.zabel@pengutronix.de, dafna3@gmail.com,
 tfiga@chromium.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, sakari.ailus@linux.intel.com,
 skhan@linuxfoundation.org, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 05/06/2020 19:26, Dafna Hirschfeld wrote:
> The rkisp1_resizer's enum callback 'rkisp1_rsz_enum_mbus_code'
> calls the enum callback of the 'rkisp1_isp' on it's video sink pad.
> This is a bug, the resizer should support the same formats
> supported by the 'rkisp1_isp' on the source pad (not the sink pad).
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Please include Helen's Ack when you post a v5.

(https://patchwork.linuxtv.org/patch/64291/)

For that matter, shouldn't this be a 'Fixes:' patch with a Cc to stable?

Regards,

	Hans

> ---
>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> index d049374413dc..d64c064bdb1d 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -437,8 +437,8 @@ static int rkisp1_rsz_enum_mbus_code(struct v4l2_subdev *sd,
>  	u32 pad = code->pad;
>  	int ret;
>  
> -	/* supported mbus codes are the same in isp sink pad */
> -	code->pad = RKISP1_ISP_PAD_SINK_VIDEO;
> +	/* supported mbus codes are the same in isp video src pad */
> +	code->pad = RKISP1_ISP_PAD_SOURCE_VIDEO;
>  	ret = v4l2_subdev_call(&rsz->rkisp1->isp.sd, pad, enum_mbus_code,
>  			       &dummy_cfg, code);
>  
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
