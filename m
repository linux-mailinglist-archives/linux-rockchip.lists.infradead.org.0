Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1257D1B7757
	for <lists+linux-rockchip@lfdr.de>; Fri, 24 Apr 2020 15:46:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NS8h3iPMBrKpbGMHEfi9N+K5+P4TQSFz1r+lXVlCueo=; b=UIaqPE+oRUUDwj
	v54cCHwoczZOwV7zCrP3grHLKFDokPHcChL1PcNYLJUdXRPnndCFq/bzyhVIMnbv6JK/PNJW9hbie
	7S7IZrq19PFND+Bxi0O5P91YfyavnVmsLpiGu6Q6Ea/iRhhGEe7wB/Q4iWPpQGOjy+rmapEI64fXO
	/TZk1kZhr3waTtFRg1+0rBXTob3qUCQubG/FrxAYmp3EMZcmYxQj0ebfmvXCZGf6Dm7nrn3v9ZZpO
	VTh/CyBMX92eJbu//UXeJ29EvhmuyuSB1/ZKKNSD+Dzy5c99mJGIHEN+MEtxJddXqo1eAPaTlGcZH
	Pz6QQ6bjHbPxkQQp3a4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRyel-0006g9-CF; Fri, 24 Apr 2020 13:46:15 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyei-0006fd-Nq
 for linux-rockchip@lists.infradead.org; Fri, 24 Apr 2020 13:46:14 +0000
Received: by mail-lj1-x244.google.com with SMTP id e25so9998222ljg.5
 for <linux-rockchip@lists.infradead.org>; Fri, 24 Apr 2020 06:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=oK6CmIJHBHfv0HWo7YgYzceYBh86WgxIMM3aYNj+VtQ=;
 b=FGM0coSe2uA5sqGO3457F/ihOg+whBn2NcHGxD/ud+9LhUkq4c0kHyOuO9/V2jLkyO
 oeiN8mN6X7Dm83p3qnYNJQww602eaSpvY5sUV8PUjhSdgUQZ40Uw/OW6/XSQU3dyme4y
 qMpFqMCNV24mV4smwQOwCRu2JCoj84iJLVBreJT3BEHLYygZUv6jGfWMYrxbEEcANiXq
 0jdtPrHpi8VrXL1lnclMDVw5VSJhpDosNuILro1fBQqdkTsExY4Ub5IMwtRq/VAPFqA3
 DLIGaVWvHusyzYA97iOHZuYBx03kuKWaMhHM6O6meDFTi/BDJc871E5FdDNT+reHI7h7
 cUzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=oK6CmIJHBHfv0HWo7YgYzceYBh86WgxIMM3aYNj+VtQ=;
 b=lPXt7r7B8lq9BNNtImsVnMDdImy5YN4oSH287Lbrq2GAFTWxj/+SG/n6A9yP3zzO7l
 YyYWDiyvGgdvngLQoWoHXwuMgo8FEnYi4+mFUlkwgvPcOqBq4nRZeTDl/ln94eazlgMP
 0hAlBkeUkTZ8ES7irAjDt2RW88xhc/2vX/9IwffuN7d4DdYD1H/DMCAzRZfuXiORVjGz
 Ra/4AdPewyqqXrIvkvg4s9Q335C+dx4erd5QXuJomIQvJextDb1iEf8kvoiNPQYrccqK
 pSy5oXRL/HrebHnXQ1e7gMogLm75N4uwuNqmtukrnUYwjC4Xcyy4CIpUmvtuOvknKLhj
 Sp7w==
X-Gm-Message-State: AGi0PubuvV+bS4+25X5CuS9+2rf/jtFj57B2wJIGYArn+qRLhhCdPyNi
 oSW3wnq5V5iTcDZFrtBXTNBmCQ==
X-Google-Smtp-Source: APiQypJ2JlXPRC2HDUqFteHa9WDe5UBL/Ds/AInQim0iWDH7dzhdZesOkFgfADD4cjMazeUcn52u+w==
X-Received: by 2002:a2e:8798:: with SMTP id n24mr5829194lji.200.1587735970781; 
 Fri, 24 Apr 2020 06:46:10 -0700 (PDT)
Received: from localhost (h-209-203.A463.priv.bahnhof.se. [155.4.209.203])
 by smtp.gmail.com with ESMTPSA id m20sm4335105ljj.94.2020.04.24.06.46.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 06:46:10 -0700 (PDT)
Date: Fri, 24 Apr 2020 15:46:09 +0200
From: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v3 1/4] media: mc-entity.c: add
 media_graph_walk_next_stream()
Message-ID: <20200424134609.GD4040416@oden.dyn.berto.se>
References: <20200415013044.1778572-1-helen.koike@collabora.com>
 <20200415013044.1778572-2-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415013044.1778572-2-helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_064612_776501_CDF9B867 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mchehab@kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, hans.verkuil@cisco.com,
 skhan@linuxfoundation.org, kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Helen,

Thanks for your work.

On 2020-04-14 22:30:41 -0300, Helen Koike wrote:
> Add media_graph_walk_next_stream() function to follow links only from
> sink to source (not the opposite) to allow iteration only through the
> entities participating in a given stream.
> =

> This is useful to allow calling .s_stream() callback only in the
> subdevices that requires to be enabled/disabled, and avoid calling this
> callback when not required.
> =

> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> =

> ---
> =

> Changes in v3:
> - Patch re-added in the series from version 1
> =

> Changes in v2: None
> =

>  drivers/media/mc/mc-entity.c | 34 +++++++++++++++++++++++++++++++---
>  include/media/media-entity.h | 15 +++++++++++++++
>  2 files changed, 46 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/media/mc/mc-entity.c b/drivers/media/mc/mc-entity.c
> index 211279c5fd77d..0d44c2de23e6f 100644
> --- a/drivers/media/mc/mc-entity.c
> +++ b/drivers/media/mc/mc-entity.c
> @@ -228,6 +228,11 @@ EXPORT_SYMBOL_GPL(media_entity_pads_init);
>   * Graph traversal
>   */
>  =

> +enum media_graph_walk_type {
> +	MEDIA_GRAPH_WALK_CONNECTED_NODES,
> +	MEDIA_GRAPH_WALK_STREAM_NODES,
> +};
> +
>  static struct media_entity *
>  media_entity_other(struct media_entity *entity, struct media_link *link)
>  {
> @@ -305,7 +310,8 @@ void media_graph_walk_start(struct media_graph *graph,
>  }
>  EXPORT_SYMBOL_GPL(media_graph_walk_start);
>  =

> -static void media_graph_walk_iter(struct media_graph *graph)
> +static void media_graph_walk_iter(struct media_graph *graph,
> +				  enum media_graph_walk_type type)
>  {
>  	struct media_entity *entity =3D stack_top(graph);
>  	struct media_link *link;
> @@ -326,6 +332,15 @@ static void media_graph_walk_iter(struct media_graph=
 *graph)
>  	/* Get the entity in the other end of the link . */
>  	next =3D media_entity_other(entity, link);
>  =

> +	if (type =3D=3D MEDIA_GRAPH_WALK_STREAM_NODES
> +	    && next =3D=3D link->sink->entity) {
> +		link_top(graph) =3D link_top(graph)->next;
> +		dev_dbg(entity->graph_obj.mdev->dev,
> +			"walk: skipping '%s' (outside of the stream path)\n",
> +			link->sink->entity->name);
> +		return;
> +	}
> +
>  	/* Has the entity already been visited? */
>  	if (media_entity_enum_test_and_set(&graph->ent_enum, next)) {
>  		link_top(graph) =3D link_top(graph)->next;
> @@ -342,7 +357,9 @@ static void media_graph_walk_iter(struct media_graph =
*graph)
>  		next->name);
>  }
>  =

> -struct media_entity *media_graph_walk_next(struct media_graph *graph)
> +static struct media_entity *
> +__media_graph_walk_next(struct media_graph *graph,
> +			enum media_graph_walk_type type)
>  {
>  	struct media_entity *entity;
>  =

> @@ -355,7 +372,7 @@ struct media_entity *media_graph_walk_next(struct med=
ia_graph *graph)
>  	 * found.
>  	 */
>  	while (link_top(graph) !=3D &stack_top(graph)->links)
> -		media_graph_walk_iter(graph);
> +		media_graph_walk_iter(graph, type);
>  =

>  	entity =3D stack_pop(graph);
>  	dev_dbg(entity->graph_obj.mdev->dev,
> @@ -363,8 +380,19 @@ struct media_entity *media_graph_walk_next(struct me=
dia_graph *graph)
>  =

>  	return entity;
>  }
> +
> +struct media_entity *media_graph_walk_next(struct media_graph *graph)
> +{
> +	return __media_graph_walk_next(graph, MEDIA_GRAPH_WALK_CONNECTED_NODES);
> +}
>  EXPORT_SYMBOL_GPL(media_graph_walk_next);
>  =

> +struct media_entity *media_graph_walk_next_stream(struct media_graph *gr=
aph)
> +{
> +	return __media_graph_walk_next(graph,  MEDIA_GRAPH_WALK_STREAM_NODES);

One space to much after the ','. With this fixed,

Reviewed-by: Niklas S=F6derlund <niklas.soderlund+renesas@ragnatech.se>

> +}
> +EXPORT_SYMBOL_GPL(media_graph_walk_next_stream);
> +
>  int media_entity_get_fwnode_pad(struct media_entity *entity,
>  				struct fwnode_handle *fwnode,
>  				unsigned long direction_flags)
> diff --git a/include/media/media-entity.h b/include/media/media-entity.h
> index 8cb2c504a05c7..f17a5180ce524 100644
> --- a/include/media/media-entity.h
> +++ b/include/media/media-entity.h
> @@ -927,6 +927,21 @@ void media_graph_walk_start(struct media_graph *grap=
h,
>   */
>  struct media_entity *media_graph_walk_next(struct media_graph *graph);
>  =

> +/**
> + * media_graph_walk_next_stream - Get the next entity in the graph
> + * @graph: Media graph structure
> + *
> + * Perform a depth-first traversal of the given media entities graph only
> + * following links from sink to source (and not the opposite).
> + *
> + * The graph structure must have been previously initialized with a call=
 to
> + * media_graph_walk_start().
> + *
> + * Return: returns the next entity in the graph in the stream path
> + * or %NULL if the whole stream path have been traversed.
> + */
> +struct media_entity *media_graph_walk_next_stream(struct media_graph *gr=
aph);
> +
>  /**
>   * media_pipeline_start - Mark a pipeline as streaming
>   * @entity: Starting entity
> -- =

> 2.26.0
> =


-- =

Regards,
Niklas S=F6derlund

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
